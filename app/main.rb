require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "送料計算機"
  erb :index
end

yuPacketPost = {
  name: "ゆうパケットポスト",
  price: 265,
  lside: 32.7,
  sside: 22.8,
  thickness: 3,
  weight: 2000,
}

nothing = {
  name: "なし",
  price: "なし",
}

post "/result" do

  shippingmethod = []

  if params[:longside].to_i <= yuPacketPost[:lside] && params[:shortside].to_i <= yuPacketPost[:sside] && params[:thickness].to_i <= yuPacketPost[:thickness] && params[:weight].to_i <= yuPacketPost[:weight]
    shippingmethod.push(yuPacketPost)
  end

  if shippingmethod == []
    shippingmethod.push(nothing)
  end

  @title = "検索結果"
  @size = params
  @shippingmethod = shippingmethod
  erb :result
end