require "sinatra"
require "sinatra/reloader"
require "./app/class/common.rb"
require "./app/class/lstw.rb"
require "./app/class/takkyubin.rb"
require "./app/class/yupack.rb"
require "./app/class/tanomerubin.rb"
require "./app/class/teikei.rb"
require "./app/class/teikeigai.rb"

set :bind, "0.0.0.0"

get "/" do
  @title = "送料計算"
  erb :index
end

post "/result" do

  size = [params[:vertical].to_i, params[:side].to_i, params[:thickness].to_i].sort.reverse
  inputlong = size[0]
  inputshort = size[1]
  inputthickness = size[2]
  inputthree = inputlong + inputshort + inputthickness
  inputweight = params[:weight].to_i

  shippingmethods = []

  $teikeigaistandards.each do |teikeigaistandard|
    if inputlong <= teikeigaistandard.lside && inputshort <= teikeigaistandard.sside && inputthickness <= teikeigaistandard.thickness && inputweight <= teikeigaistandard.weight
      shippingmethods.push(teikeigaistandard)
      break
    end
  end

  if shippingmethods == []
    $teikeigainonstandards.each do |teikeigainonstandard|
      if inputlong <= teikeigainonstandard.lside && inputthree <= teikeigainonstandard.threesides && inputweight <= teikeigainonstandard.weight
        shippingmethods.push(teikeigainonstandard)
        break
      end
    end  
  end

  $lstws.each do |lstw|
    if inputlong <= lstw.lside && inputshort <= lstw.sside && inputthickness <= lstw.thickness && inputweight <= lstw.weight
      shippingmethods.push(lstw)
    end
  end

  $takkyubins.each do |takkyubin|
    if inputthree <= takkyubin.threesides && inputweight <= takkyubin.weight
      shippingmethods.push(takkyubin)
      break
    end
  end

  $yupacks.each do |yupack|
    if inputthree <= yupack.threesides && inputweight <= yupack.weight
      shippingmethods.push(yupack)
      break
    end
  end

  $tanomerubins.each do |tanomerubin|
    if inputthree <= tanomerubin.threesides
      shippingmethods.push(tanomerubin)
      break
    end
  end

  $teikeis.each do |teikei|
    if inputlong <= teikei.lside && inputshort <= teikei.sside && inputthickness <= teikei.thickness && inputweight <= teikei.weight
      shippingmethods.push(teikei)
      break
    end
  end

  if inputlong <= $yuPacket.lside && inputthickness <= $yuPacket.thickness && inputthree <= $yuPacket.threesides && inputweight <= $yuPacket.weight
    shippingmethods.push($yuPacket)
  end

  if inputlong <= $letterPackPlus.lside && inputshort <= $letterPackPlus.sside && inputweight <= $letterPackPlus.weight
    shippingmethods.push($letterPackPlus)
  end

  if inputlong <= $takkyubinCompactThin.lside && inputshort <= $takkyubinCompactThin.sside
    shippingmethods.push($takkyubinCompactThin)
  end

  if inputlong <= $takkyubinCompact.lside && inputshort <= $takkyubinCompact.sside && inputthickness <= $takkyubinCompact.thickness
    shippingmethods.push($takkyubinCompact)
  end

  if shippingmethods == []
    shippingmethods.push($nothing)
  end

  prices = []

  shippingmethods.each do |shippingmethod|
    prices.push(shippingmethod.price)
  end

  cheap = prices.min

  cheapest = []

  shippingmethods.each do |ship|
    if ship.price == cheap
      cheapest.push(ship)
    end
  end

  shippingmethodsort = shippingmethods.sort {|a, b|
    a.price <=> b.price
  }

  @title = "検索結果"
  @size = params
  @shippingmethods = shippingmethods
  @cheapest = cheapest
  @shippingmethodsort = shippingmethodsort
  erb :result
end

get "/terms" do
  @title = "利用規約"
  erb :terms
end