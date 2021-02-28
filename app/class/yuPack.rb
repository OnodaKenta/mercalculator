require "./app/class/common.rb"

class Yupack < Common
  def initialize(name:, price:, threesides:)
    @name = name
    @url = "/method/yuPack"
    @price = price
    @type = "ゆうゆうメルカリ便"
    @anonymous = "○"
    @tracking = "○"
    @compensation = "○"
    @note = "-"
    @threesides = threesides
    @weight = 25000
    $yuPacks.push(self)
  end
end

$yuPacks = []

$yuPack = Yupack.new(name: "ゆうパック60サイズ", price: 700, threesides: 60)
$yuPack.titlename = "ゆうパック"
yuPack80 = Yupack.new(name: "ゆうパック80サイズ", price: 800, threesides: 80)
yuPack100 = Yupack.new(name: "ゆうパック100サイズ", price: 1000, threesides: 100)