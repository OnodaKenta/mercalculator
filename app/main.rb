require "sinatra"
require "sinatra/reloader"
require "dotenv"
require "gmail"
require "rack/csrf"
Dir["./app/class/*.rb"].each { |f| require f }

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

def linkBlank(url, txt="梱包材をAmazonで見る")
  %Q(<a href="#{url}" target="_blank" rel="noopener noreferrer">#{txt}</a>)
end

get "/" do
  @title = "送料計算"
  erb :index
end

teikeigaistandards = TeikeigaiStandard.classarray
teikeigai = teikeigaistandards[0]

teikeigainonstandards = TeikeigaiNonStandard.classarray
teikeigainonstd = teikeigainonstandards[0]

commons = Common.classarray
yuPacket = commons[0]
letterPackPlus = commons[1]
takkyubinCompact = commons[2]
takkyubinCompactThin = commons[3]
nothing = commons[4]

lstws = Lstw.classarray
nekoPos = lstws[0]
yuPacketPost = lstws[1]
clickPost = lstws[2]
smartLetter = lstws[3]
letterPackLight = lstws[4]
yuPacketPlus = lstws[5]

takkyubins = Takkyubin.classarray
takkyubin = takkyubins[0]

tanomerubins = Tanomerubin.classarray
tanomerubin = tanomerubins[0]

teikeis = Teikei.classarray
teikei = teikeis[0]

yuPacks = Yupack.classarray
yuPack = yuPacks[0]

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
    teikeigainonstandards.each do |teikeigainonstandard|
      if inputlong <= teikeigainonstandard.lside && inputthree <= teikeigainonstandard.threesides && inputweight <= teikeigainonstandard.weight
        shippingmethods.push(teikeigainonstandard)
        break
      end
    end  
  end

  if inputlong <= yuPacket.lside && inputthickness <= yuPacket.thickness && inputthree <= yuPacket.threesides && inputweight <= yuPacket.weight
    shippingmethods.push(yuPacket)
  end

  if inputlong <= letterPackPlus.lside && inputshort <= letterPackPlus.sside && inputweight <= letterPackPlus.weight
    shippingmethods.push(letterPackPlus)
  end

  if inputlong <= takkyubinCompact.lside && inputshort <= takkyubinCompact.sside && inputthickness <= takkyubinCompact.thickness
    shippingmethods.push(takkyubinCompact)
  end

  if inputlong <= takkyubinCompactThin.lside && inputshort <= takkyubinCompactThin.sside
    shippingmethods.push(takkyubinCompactThin)
  end

  lstws.each do |lstw|
    if inputlong <= lstw.lside && inputshort <= lstw.sside && inputthickness <= lstw.thickness && inputweight <= lstw.weight
      shippingmethods.push(lstw)
    end
  end

  takkyubins.each do |takkyu|
    if inputthree <= takkyu.threesides && inputweight <= takkyu.weight
      shippingmethods.push(takkyu)
      break
    end
  end

  tanomerubins.each do |tanomeru|
    if inputlong <= tanomeru.lside && inputthree <= tanomeru.threesides && inputweight <= tanomeru.weight
      shippingmethods.push(tanomeru)
      break
    end
  end

  teikeis.each do |tkei|
    if inputlong <= tkei.lside && inputshort <= tkei.sside && inputthickness <= tkei.thickness && inputweight <= tkei.weight
      shippingmethods.push(tkei)
      break
    end
  end

  yuPacks.each do |ypack|
    if inputthree <= ypack.threesides && inputweight <= ypack.weight
      shippingmethods.push(ypack)
      break
    end
  end

  if shippingmethods == []
    shippingmethods.push(nothing)
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
  @method = takkyubin
  @title = @method.titlename
  @takkyubins = takkyubins
  erb :takkyubin
end

get "/method/takkyubinCompact" do
  @method = takkyubinCompact
  @method2 = takkyubinCompactThin
  @title = @method.name
  erb :takkyubinCompact
end

get "/method/tanomerubin" do
  @method = tanomerubin
  @title = @method.titlename
  @tanomerubins = tanomerubins
  erb :tanomerubin
end

get "/method/teikei" do
  @method = teikei
  @title = @method.name
  @teikeis = teikeis
  erb :teikei
end

get "/method/teikeigai" do
  @method = teikeigai
  @method2 = teikeigainonstd
  @title = @method.titlename
  @teikeigaistandards = teikeigaistandards
  @teikeigainonstandards = teikeigainonstandards
  erb :teikeigai
end

get "/method/yuPack" do
  @method = yuPack
  @title = @method.titlename
  @yuPacks = yuPacks
  erb :yuPack
end

get "/method/:methodname" do |mname|
  @method = eval("#{mname}")
  @title = @method.name
  erb mname.to_sym, :layout => :layoutmethod
end