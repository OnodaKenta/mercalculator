require "sinatra"
require "sinatra/reloader"
require "./app/class/common.rb"
require "./app/class/lstw.rb"
require "./app/class/takkyubin.rb"
require "./app/class/yupack.rb"
require "./app/class/tanomerubin.rb"
require "./app/class/fixed.rb"
require "./app/class/teikeigai.rb"

set :bind, "0.0.0.0"

get "/" do
  @title = "送料計算機"
  erb :index
end

post "/result" do

  shippingmethods = []

  $lstws.each do |lstw|
    if params[:longside].to_i <= lstw.lside && params[:shortside].to_i <= lstw.sside && params[:thickness].to_i <= lstw.thickness && params[:weight].to_i <= lstw.weight
      shippingmethods.push(lstw)
    end
  end

  $takkyubins.each do |takkyu|
    if params[:longside].to_i + params[:shortside].to_i + params[:thickness].to_i <= takkyu.threesides && params[:weight].to_i <= takkyu.weight
      shippingmethods.push(takkyu)
      break
    end
  end

  $yupacks.each do |yupack|
    if params[:longside].to_i + params[:shortside].to_i + params[:thickness].to_i <= yupack.threesides && params[:weight].to_i <= yupack.weight
      shippingmethods.push(yupack)
      break
    end
  end

  $tanomerubins.each do |tanomeru|
    if params[:longside].to_i + params[:shortside].to_i + params[:thickness].to_i <= tanomeru.threesides
      shippingmethods.push(tanomeru)
      break
    end
  end

  $fixedforms.each do |fixedform|
    if params[:longside].to_i <= fixedform.lside && params[:shortside].to_i <= fixedform.sside && params[:thickness].to_i <= fixedform.thickness && params[:weight].to_i <= fixedform.weight
      shippingmethods.push(fixedform)
      break
    end
  end

  $teikeigaistandards.each do |teikeigaistandard|
    if params[:longside].to_i <= teikeigaistandard.lside && params[:shortside].to_i <= teikeigaistandard.sside && params[:thickness].to_i <= teikeigaistandard.thickness && params[:weight].to_i <= teikeigaistandard.weight
      shippingmethods.push(teikeigaistandard)
      break
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

  shippingsort = shippingmethods.sort {|a, b|
    a.price <=> b.price
  }

  @title = "検索結果"
  @size = params
  @shippingmethods = shippingmethods
  @cheapest = cheapest
  @shippingsort = shippingsort
  erb :result
end