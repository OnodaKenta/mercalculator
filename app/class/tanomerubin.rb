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