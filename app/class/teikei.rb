require "./app/class/common.rb"

class Teikei < Common
  def initialize(fee:, weight:)
    @name = "定形郵便"
    @url = "/method/teikei"
    @fee = fee
    @box = 0
    @price = fee + 0
    @type = "日本郵便"
    @anonymous = "×"
    @tracking = "×"
    @compensation = "×"
    @lside = 23.5
    @sside = 12
    @thickness = 1
    @weight = weight
    $teikeis.push(self)
  end
end

$teikeis = []

$teikei = Teikei.new(fee: 84, weight: 25)
teikei50 = Teikei.new(fee: 94, weight: 50)