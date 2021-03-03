require "./app/class/common.rb"

class Yupack < Common
  def initialize(name:, fee:, threesides:)
    @name = name
    @url = "/method/yuPack"
    @fee = fee
    @box = 0
    @type = "ゆうゆうメルカリ便"
    @anonymous = "○"
    @tracking = "○"
    @compensation = "○"
    @threesides = threesides
    @weight = 25000
    $yuPacks.push(self)
  end
end

$yuPacks = []

$yuPack = Yupack.new(name: "ゆうパック60サイズ", fee: 700, threesides: 60)
$yuPack.titlename = "ゆうパック"
yuPack80 = Yupack.new(name: "ゆうパック80サイズ", fee: 800, threesides: 80)
yuPack100 = Yupack.new(name: "ゆうパック100サイズ", fee: 1000, threesides: 100)