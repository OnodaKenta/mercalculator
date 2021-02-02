require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "送料計算機"
  erb :index
end

class ShippingMethod
  attr_reader :name
  attr_reader :price
  attr_reader :lside
  attr_reader :sside
  attr_reader :thickness
  attr_reader :weight
  def initialize(name:, price:, lside:, sside:, thickness:, weight:)
    self.name = name
    self.price = price
    self.lside = lside
    self.sside = sside
    self.thickness = thickness
    self.weight = weight
  end
end

yuPacketPost = ShippingMethod.new(name: "ゆうパケットポスト", price: 265, lside: 32.7, sside: 22.8, thickness: 3, weight: 2000)

nothing = ShippingMethod.new(name: "なし", price: "-", lside: "-", sside: "-", thickness: "-", weight: "-")

post "/result" do

  shippingmethods = []

  if params[:longside].to_i <= yuPacketPost.lside && params[:shortside].to_i <= yuPacketPost.sside && params[:thickness].to_i <= yuPacketPost.thickness && params[:weight].to_i <= yuPacketPost.weight
    shippingmethods.push(yuPacketPost)
  end

  if shippingmethods == []
    shippingmethods.push(nothing)
  end

  @title = "検索結果"
  @size = params
  @shippingmethods = shippingmethods
  erb :result
end