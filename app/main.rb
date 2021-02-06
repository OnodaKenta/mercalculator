require "./app/class.rb"
require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "送料計算機"
  erb :index
end

post "/result" do

  $instances = []

  nekoPos = Lstw.new(name: "ネコポス", price: 175, type: "らくらくメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "長辺短辺下限あり", lside: 31.2, sside: 22.8, thickness: 3, weight: 1000)

  yuPacketPost = Lstw.new(name: "ゆうパケットポスト", price: 265, type: "ゆうゆうメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "専用BOX", lside: 32.7, sside: 22.8, thickness: 3, weight: 2000)

  shippingmethods = []

  $instances.each do |ins|
    if params[:longside].to_i <= ins.lside && params[:shortside].to_i <= ins.sside && params[:thickness].to_i <= ins.thickness && params[:weight].to_i <= ins.weight
      shippingmethods.push(ins)
    end
  end

  if shippingmethods == []
    nothing = Common.new(name: "なし", price: 0, type: "-", anonymous: 0, tracking: 0, compensation: 0, note: "-")
    shippingmethods.push(nothing)
  end

  prices = []

  shippingmethods.each do |ship|
    prices.push(ship.price)
  end

  cheap = prices.min

  cheapest = []

  shippingmethods.each do |ship|
    if ship.price == cheap
      cheapest.push(ship)
    end
  end

  @title = "検索結果"
  @size = params
  @shippingmethods = shippingmethods
  @cheapest = cheapest
  erb :result
end