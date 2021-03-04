require "sinatra"
require "sinatra/reloader"
require "dotenv"
require "gmail"
require "rack/csrf"
require "./app/class/common.rb"
require "./app/class/lstw.rb"
require "./app/class/takkyubin.rb"
require "./app/class/tanomerubin.rb"
require "./app/class/teikei.rb"
require "./app/class/teikeigai.rb"
require "./app/class/yuPack.rb"

Dotenv.load("./.env")
set :bind, "0.0.0.0"

use Rack::Session::Cookie, secret: ENV["RACK_SECRET"]
use Rack::Csrf, raise: true

helpers do
  def h(str)
    Rack::Utils.escape_html(str)
  end

  def csrf_tag
    Rack::Csrf.csrf_tag(env)
  end
end

get "/" do
  @title = "送料計算"
  erb :index
end

teikeigaistandards = TeikeigaiStandard.classarray
teikeigai = teikeigaistandards[0]

post "/result" do

  size = [params[:vertical].to_i, params[:side].to_i, params[:thickness].to_i].sort.reverse
  inputlong = size[0]
  inputshort = size[1]
  inputthickness = size[2]
  inputthree = inputlong + inputshort + inputthickness
  inputweight = params[:weight].to_i

  shippingmethods = []

  teikeigaistandards.each do |teikeigaistandard|
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

  $yuPacks.each do |yuPack|
    if inputthree <= yuPack.threesides && inputweight <= yuPack.weight
      shippingmethods.push(yuPack)
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

get "/inquiry" do
  @title = "お問い合わせ"
  erb :inquiry
end

post "/confirm" do
  @title = "お問い合わせ内容確認"
  @name = params[:name]
  @email = params[:email]
  @subject = params[:subject]
  @message = params[:message]
  erb :confirm
end

post "/send" do
  name = params[:name]
  email = params[:email]
  subject = params[:subject]
  message = params[:message]

  username = ENV["GMAIL_ADRESS"]
  password = ENV["GMAIL_PASSWORD"]

  gmail = Gmail.connect(username, password)

  gmail.deliver do
    to "#{username}"
    subject "お問い合わせ: #{subject}"
    html_part do
      content_type "text/html; charset=UTF-8"
      body "from: #{name}(#{email})<br>subject: #{subject}<br>本文:<br>#{message}"
    end
  end

  gmail.logout

  @title = "送信完了"
  erb :send
end

get "/terms" do
  @title = "利用規約"
  @time = File::Stat.new("./app/views/terms.erb").mtime.getlocal("+09:00")
  erb :terms
end

get "/privacy" do
  @title = "プライバシーポリシー"
  @time = File::Stat.new("./app/views/privacy.erb").mtime.getlocal("+09:00")
  erb :privacy
end

get "/method/takkyubin" do
  @method = $takkyubin
  @title = @method.titlename
  @takkyubins = $takkyubins
  erb :takkyubin
end

get "/method/takkyubinCompact" do
  @method = $takkyubinCompact
  @method2 = $takkyubinCompactThin
  @title = @method.name
  erb :takkyubinCompact
end

get "/method/tanomerubin" do
  @method = $tanomerubin
  @title = @method.titlename
  @tanomerubins = $tanomerubins
  erb :tanomerubin
end

get "/method/teikei" do
  @method = $teikei
  @title = @method.name
  @teikeis = $teikeis
  erb :teikei
end

get "/method/teikeigai" do
  @method = teikeigai
  @method2 = $teikeigainonstandard
  @title = @method.titlename
  @teikeigaistandards = teikeigaistandards
  @teikeigainonstandards = $teikeigainonstandards
  erb :teikeigai
end

get "/method/yuPack" do
  @method = $yuPack
  @title = @method.titlename
  @yuPacks = $yuPacks
  erb :yuPack
end

get "/method/:methodname" do |mname|
  @method = eval("$#{mname}")
  @title = @method.name
  erb mname.to_sym, :layout => :layoutmethod
end