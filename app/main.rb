require "./app/class.rb"
require "sinatra"
require "sinatra/reloader"

set :bind, "0.0.0.0"

get "/" do
  @title = "送料計算機"
  erb :index
end

$lstws = []

nekoPos = Lstw.new(name: "ネコポス", eng: "nekopos", price: 175, type: "らくらくメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "長辺短辺下限あり", lside: 31.2, sside: 22.8, thickness: 3, weight: 1000)

yuPacketPost = Lstw.new(name: "ゆうパケットポスト", eng: "yupacketpost", price: 265, type: "ゆうゆうメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "専用BOX", lside: 32.7, sside: 22.8, thickness: 3, weight: 2000)

clickPost = Lstw.new(name: "クリックポスト", eng: "clickpost", price: 198, type: "日本郵便", anonymous: 0, tracking: 1, compensation: 0, note: "長辺短辺下限あり", lside: 34, sside: 25, thickness: 3, weight: 1000)

post "/result" do

  shippingmethods = []

  $lstws.each do |lstw|
    if params[:longside].to_i <= lstw.lside && params[:shortside].to_i <= lstw.sside && params[:thickness].to_i <= lstw.thickness && params[:weight].to_i <= lstw.weight
      shippingmethods.push(lstw)
    end
  end

  if shippingmethods == []
    nothing = Common.new(name: "なし", eng: "none", price: 0, type: "-", anonymous: 0, tracking: 0, compensation: 0, note: "-")
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