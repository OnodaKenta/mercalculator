require "./app/class/common.rb"

class Tanomerubin < Common
  def initialize(name:, price:, threesides:)
    @name = name
    @url = "/method/tanomerubin"
    @price = price
    @type = "梱包・発送たのメル便"
    @anonymous = "○"
    @tracking = "○"
    @compensation = "○"
    @note = "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!"
    @threesides = threesides
    $tanomerubins.push(self)
  end
end

$tanomerubins = []

tanomerubin80 = Tanomerubin.new(name: "梱包・発送たのメル便80サイズ", price: 1700, threesides: 80)
tanomerubin120 = Tanomerubin.new(name: "梱包・発送たのメル便120サイズ", price: 2400, threesides: 120)
tanomerubin160 = Tanomerubin.new(name: "梱包・発送たのメル便160サイズ", price: 3400, threesides: 160)
tanomerubin200 = Tanomerubin.new(name: "梱包・発送たのメル便200サイズ", price: 5000, threesides: 200)
tanomerubin250 = Tanomerubin.new(name: "梱包・発送たのメル便250サイズ", price: 8600, threesides: 250)
tanomerubin300 = Tanomerubin.new(name: "梱包・発送たのメル便300サイズ", price: 12000, threesides: 300)
tanomerubin350 = Tanomerubin.new(name: "梱包・発送たのメル便350サイズ", price: 18500, threesides: 350)
tanomerubin400 = Tanomerubin.new(name: "梱包・発送たのメル便400サイズ", price: 25400, threesides: 400)
tanomerubin450 = Tanomerubin.new(name: "梱包・発送たのメル便450サイズ", price: 33000, threesides: 450)