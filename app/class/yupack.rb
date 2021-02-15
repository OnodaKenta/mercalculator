require "./app/class/common.rb"

class Yupack < Common
  attr_accessor :threesides
  attr_accessor :weight

  def initialize(name:, eng:, price:, threesides:)
    @name = name
    @eng = eng
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

yupack60 = Yupack.new(name: "ゆうパック60サイズ", eng: "yupack60", price: 700, threesides: 60)

yupack80 = Yupack.new(name: "ゆうパック80サイズ", eng: "yupack80", price: 800, threesides: 80)

yupack100 = Yupack.new(name: "ゆうパック100サイズ", eng: "yupack100", price: 1000, threesides: 100)