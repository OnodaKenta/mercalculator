require "./app/class/common.rb"

class Yupack < Common
  @@yuPacks = []
  def initialize(name:, fee:, threesides:, array: @@yuPacks)
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
    pusharray(array)
  end

  def self.classarray
    @@yuPacks
  end
end

yuPack60 = Yupack.new(name: "ゆうパック60サイズ", fee: 700, threesides: 60)
yuPack60.titlename = "ゆうパック"
yuPack80 = Yupack.new(name: "ゆうパック80サイズ", fee: 800, threesides: 80)
yuPack100 = Yupack.new(name: "ゆうパック100サイズ", fee: 1000, threesides: 100)