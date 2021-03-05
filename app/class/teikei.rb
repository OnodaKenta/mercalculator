require "./app/class/common.rb"

class Teikei < Common
  @@teikeis = []
  def initialize(fee:, weight:, array: @@teikeis)
    @name = "定形郵便"
    @url = "/method/teikei"
    @fee = fee
    @box = 0
    @type = "日本郵便"
    @anonymous = "×"
    @tracking = "×"
    @compensation = "×"
    @lside = 23.5
    @sside = 12
    @thickness = 1
    @weight = weight
    pusharray(array)
  end

  def self.classarray
    @@teikeis
  end
end

teikei25 = Teikei.new(fee: 84, weight: 25)
teikei50 = Teikei.new(fee: 94, weight: 50)