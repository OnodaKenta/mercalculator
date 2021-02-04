require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "送料計算機"
  erb :index
end

post "/result" do

  $instances = []

  class ShippingMethod
    attr_accessor :name
    attr_accessor :price
    attr_accessor :lside
    attr_accessor :sside
    attr_accessor :thickness
    attr_accessor :weight

    def initialize(name:, price:, lside:, sside:, thickness:, weight:)
      self.name = name
      self.price = price
      self.lside = lside
      self.sside = sside
      self.thickness = thickness
      self.weight = weight
      $instances.push(self)
    end
  end

  yuPacketPost = ShippingMethod.new(name: "ゆうパケットポスト", price: 265, lside: 32.7, sside: 22.8, thickness: 3, weight: 2000)

  takkyubinCompact = ShippingMethod.new(name: "宅急便コンパクト", price: 450, lside: 25, sside: 20, thickness: 5, weight: 99999)

  shippingmethods = []

  $instances.each do |ins|
    if params[:longside].to_i <= ins.lside && params[:shortside].to_i <= ins.sside && params[:thickness].to_i <= ins.thickness && params[:weight].to_i <= ins.weight
      shippingmethods.push(ins)
    end
  end

  if shippingmethods == []
    nothing = ShippingMethod.new(name: "なし", price: 0, lside: "-", sside: "-", thickness: "-", weight: "-")
    shippingmethods.push(nothing)
  end

  @title = "検索結果"
  @size = params
  @shippingmethods = shippingmethods
  erb :result
end