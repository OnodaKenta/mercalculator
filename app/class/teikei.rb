require "./app/class/common.rb"

class Teikei < Common
  def initialize(price:, weight:)
    @name = "定形郵便"
    @url = "/method/teikei"
    @price = price
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

$teikei = Teikei.new(price: 84, weight: 25)
teikei50 = Teikei.new(price: 94, weight: 50)