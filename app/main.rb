require "sinatra"
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

def linkBlank(url, txt="梱包材をAmazonで見る")
  %Q(<a href="#{url}" target="_blank" rel="noopener noreferrer">#{txt}</a>)
end

get "/" do
  @title = "送料計算"
  erb :index
end

yuPacket = Common.new(name: "ゆうパケット", url: "/method/yuPacket", fee: 200, box: 0, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○")
yuPacket.lside = 34
yuPacket.thickness = 3
yuPacket.threesides = 60
yuPacket.weight = 1000

letterPackPlus = Common.new(name: "レターパックプラス", url: "/method/letterPackPlus", fee: 520, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×")
letterPackPlus.lside = 34
letterPackPlus.sside = 24.8
letterPackPlus.weight = 4000

takkyubinCompact = Common.new(name: "宅急便コンパクト", url: "/method/takkyubinCompact", fee: 380, box: 70, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○")
takkyubinCompact.lside = 25
takkyubinCompact.sside = 20
takkyubinCompact.thickness = 5

takkyubinCompactThin = Common.new(name: "宅急便コンパクト薄型BOX", url: "/method/takkyubinCompact", fee: 380, box: 70, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○")
takkyubinCompactThin.lside = 34
takkyubinCompactThin.sside = 24.8

nothing = Common.new(name: "なし", url: "none", fee: 0, box: 0, type: "-", anonymous: "×", tracking: "×", compensation: "×")

nekoPos = Lstw.new(name: "ネコポス", url: "/method/nekoPos", fee: 175, box: 0, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○", lside: 31.2, sside: 22.8, thickness: 3, weight: 1000)
yuPacketPost = Lstw.new(name: "ゆうパケットポスト", url: "/method/yuPacketPost", fee: 200, box: 65, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○", lside: 32.7, sside: 22.8, thickness: 3, weight: 2000)
clickPost = Lstw.new(name: "クリックポスト", url: "/method/clickPost", fee: 198, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×", lside: 34, sside: 25, thickness: 3, weight: 1000)
smartLetter = Lstw.new(name: "スマートレター", url: "/method/smartLetter", fee: 180, box: 0, type: "日本郵便", anonymous: "×", tracking: "×", compensation: "×", lside: 25, sside: 17, thickness: 2, weight: 1000)
letterPackLight = Lstw.new(name: "レターパックライト", url: "/method/letterPackLight", fee: 370, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×", lside: 34, sside: 24.8, thickness: 3, weight: 4000)
yuPacketPlus = Lstw.new(name: "ゆうパケットプラス", url: "/method/yuPacketPlus", fee: 375, box: 65, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○", lside: 24, sside: 17, thickness: 7, weight: 2000)

takkyubin = Takkyubin.new(name: "宅急便60サイズ", fee: 700, threesides: 60, weight: 2000)
takkyubin.titlename = "宅急便"
takkyubin80 = Takkyubin.new(name: "宅急便80サイズ", fee: 800, threesides: 80, weight: 5000)
takkyubin100 = Takkyubin.new(name: "宅急便100サイズ", fee: 1000, threesides: 100, weight: 10000)
takkyubin120 = Takkyubin.new(name: "宅急便120サイズ", fee: 1100, threesides: 120, weight: 15000)
takkyubin140 = Takkyubin.new(name: "宅急便140サイズ", fee: 1300, threesides: 140, weight: 20000)
takkyubin160 = Takkyubin.new(name: "宅急便160サイズ", fee: 1600, threesides: 160, weight: 25000)

tanomerubin = Tanomerubin.new(name: "梱包・発送たのメル便80サイズ", fee: 1700, threesides: 80)
tanomerubin.titlename = "梱包・発送たのメル便"
tanomerubin120 = Tanomerubin.new(name: "梱包・発送たのメル便120サイズ", fee: 2400, threesides: 120)
tanomerubin160 = Tanomerubin.new(name: "梱包・発送たのメル便160サイズ", fee: 3400, threesides: 160)
tanomerubin200 = Tanomerubin.new(name: "梱包・発送たのメル便200サイズ", fee: 5000, threesides: 200)
tanomerubin250 = Tanomerubin.new(name: "梱包・発送たのメル便250サイズ", fee: 8600, threesides: 250)
tanomerubin300 = Tanomerubin.new(name: "梱包・発送たのメル便300サイズ", fee: 12000, threesides: 300)
tanomerubin350 = Tanomerubin.new(name: "梱包・発送たのメル便350サイズ", fee: 18500, threesides: 350)
tanomerubin400 = Tanomerubin.new(name: "梱包・発送たのメル便400サイズ", fee: 25400, threesides: 400)
tanomerubin450 = Tanomerubin.new(name: "梱包・発送たのメル便450サイズ", fee: 33000, threesides: 450)

teikei = Teikei.new(fee: 84, weight: 25)
teikei50 = Teikei.new(fee: 94, weight: 50)

teikeigaistandard = TeikeigaiStandard.new(fee: 120, weight: 50)
teikeigaistandard.titlename = "定形外郵便"
teikeigaistandard100 = TeikeigaiStandard.new(fee: 140, weight: 100)
teikeigaistandard150 = TeikeigaiStandard.new(fee: 210, weight: 150)
teikeigaistandard250 = TeikeigaiStandard.new(fee: 250, weight: 250)
teikeigaistandard500 = TeikeigaiStandard.new(fee: 390, weight: 500)
teikeigaistandard1000 = TeikeigaiStandard.new(fee: 580, weight: 1000)

teikeigainonstandard = TeikeigaiNonStandard.new(fee: 200, weight: 50)
teikeigainonstandard100 = TeikeigaiNonStandard.new(fee: 220, weight: 100)
teikeigainonstandard150 = TeikeigaiNonStandard.new(fee: 300, weight: 150)
teikeigainonstandard250 = TeikeigaiNonStandard.new(fee: 350, weight: 250)
teikeigainonstandard500 = TeikeigaiNonStandard.new(fee: 510, weight: 500)
teikeigainonstandard1000 = TeikeigaiNonStandard.new(fee: 710, weight: 1000)
teikeigainonstandard2000 = TeikeigaiNonStandard.new(fee: 1040, weight: 2000)
teikeigainonstandard4000 = TeikeigaiNonStandard.new(fee: 1350, weight: 4000)

yuPack = Yupack.new(name: "ゆうパック60サイズ", fee: 700, threesides: 60)
yuPack.titlename = "ゆうパック"
yuPack80 = Yupack.new(name: "ゆうパック80サイズ", fee: 800, threesides: 80)
yuPack100 = Yupack.new(name: "ゆうパック100サイズ", fee: 1000, threesides: 100)

teikeigaistandards = TeikeigaiStandard.classarray
teikeigainonstandards = TeikeigaiNonStandard.classarray
commons = Common.classarray
lstws = Lstw.classarray
takkyubins = Takkyubin.classarray
tanomerubins = Tanomerubin.classarray
teikeis = Teikei.classarray
yuPacks = Yupack.classarray

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
  @method = teikeigaistandard
  @method2 = teikeigainonstandard
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