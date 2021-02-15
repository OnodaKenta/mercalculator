require "./app/class/common.rb"

class Fixed < Common
  attr_accessor :lside
  attr_accessor :sside
  attr_accessor :thickness
  attr_accessor :weight

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
    $fixedforms.push(self)
  end
end

$fixedforms = []

fixed25 = Fixed.new(eng: "fixed25", price: 84, weight: 25)

fixed50 = Fixed.new(eng: "fixed50", price: 94, weight: 50)