require "./app/class/common.rb"

class Teikei < Common
  def initialize(eng:, price:, weight:)
    @name = "定形郵便"
    @eng = eng
    @price = price
    @type = "日本郵便"
    @anonymous = 0
    @tracking = 0
    @compensation = 0
    @note = "長辺短辺下限あり"
    @lside = 23.5
    @sside = 12
    @thickness = 1
    @weight = weight
    $teikeis.push(self)
  end
end

$teikeis = []

teikei25 = Teikei.new(eng: "teikei25", price: 84, weight: 25)
teikei50 = Teikei.new(eng: "teikei50", price: 94, weight: 50)