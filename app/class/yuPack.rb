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