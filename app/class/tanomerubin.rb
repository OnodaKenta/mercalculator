require "./app/class/common.rb"

class Tanomerubin < Common
  attr_accessor :threesides

  def initialize(name:, eng:, price:, type:, anonymous:, tracking:, compensation:, note:, threesides:)
    @name = name
    @eng = eng
    @price = price
    @type = type
    @anonymous = anonymous
    @tracking = tracking
    @compensation = compensation
    @note = note
    @threesides = threesides
    $tanomerubins.push(self)
  end
end

$tanomerubins = []

tanomerubin80 = Tanomerubin.new(name: "梱包・発送たのメル便80サイズ", eng: "tanomerubin80", price: 1700, type: "梱包・発送たのメル便", anonymous: 1, tracking: 1, compensation: 1, note: "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!", threesides: 80)

tanomerubin120 = Tanomerubin.new(name: "梱包・発送たのメル便120サイズ", eng: "tanomerubin120", price: 2400, type: "梱包・発送たのメル便", anonymous: 1, tracking: 1, compensation: 1, note: "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!", threesides: 120)

tanomerubin160 = Tanomerubin.new(name: "梱包・発送たのメル便160サイズ", eng: "tanomerubin160", price: 3400, type: "梱包・発送たのメル便", anonymous: 1, tracking: 1, compensation: 1, note: "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!", threesides: 160)

tanomerubin200 = Tanomerubin.new(name: "梱包・発送たのメル便200サイズ", eng: "tanomerubin200", price: 5000, type: "梱包・発送たのメル便", anonymous: 1, tracking: 1, compensation: 1, note: "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!", threesides: 200)

tanomerubin250 = Tanomerubin.new(name: "梱包・発送たのメル便250サイズ", eng: "tanomerubin250", price: 8600, type: "梱包・発送たのメル便", anonymous: 1, tracking: 1, compensation: 1, note: "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!", threesides: 250)

tanomerubin300 = Tanomerubin.new(name: "梱包・発送たのメル便300サイズ", eng: "tanomerubin300", price: 12000, type: "梱包・発送たのメル便", anonymous: 1, tracking: 1, compensation: 1, note: "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!", threesides: 300)

tanomerubin350 = Tanomerubin.new(name: "梱包・発送たのメル便350サイズ", eng: "tanomerubin350", price: 18500, type: "梱包・発送たのメル便", anonymous: 1, tracking: 1, compensation: 1, note: "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!", threesides: 350)

tanomerubin400 = Tanomerubin.new(name: "梱包・発送たのメル便400サイズ", eng: "tanomerubin400", price: 25400, type: "梱包・発送たのメル便", anonymous: 1, tracking: 1, compensation: 1, note: "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!", threesides: 400)

tanomerubin450 = Tanomerubin.new(name: "梱包・発送たのメル便450サイズ", eng: "tanomerubin450", price: 33000, type: "梱包・発送たのメル便", anonymous: 1, tracking: 1, compensation: 1, note: "梱包・集荷・発送をすべてプロにおまかせで大型商品を手間なく出品!", threesides: 450)