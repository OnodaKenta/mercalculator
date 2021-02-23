require "./app/class/common.rb"

class Yupack < Common
  def initialize(name:, price:, threesides:)
    @name = name
    @url = "/method/yupack"
    @price = price
    @type = "ゆうゆうメルカリ便"
    @anonymous = 1
    @tracking = 1
    @compensation = 1
    @note = "-"
    @threesides = threesides
    @weight = 25000
    $yupacks.push(self)
  end
end

$yupacks = []

yupack60 = Yupack.new(name: "ゆうパック60サイズ", price: 700, threesides: 60)
yupack80 = Yupack.new(name: "ゆうパック80サイズ", price: 800, threesides: 80)
yupack100 = Yupack.new(name: "ゆうパック100サイズ", price: 1000, threesides: 100)