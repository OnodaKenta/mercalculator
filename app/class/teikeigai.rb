require "./app/class/common.rb"

class TeikeigaiStandard < Common
  attr_accessor :lside
  attr_accessor :sside
  attr_accessor :thickness
  attr_accessor :weight

  def initialize(eng:, price:, weight:)
    @name = "定形外郵便 規格内"
    @eng = eng
    @price = price
    @type = "日本郵便"
    @anonymous = 0
    @tracking = 0
    @compensation = 0
    @note = "-"
    @lside = 34
    @sside = 25
    @thickness = 3
    @weight = weight
    $teikeigaistandards.push(self)
  end

end

$teikeigaistandards = []

teistandars50 = TeikeigaiStandard.new(eng: "teistandars50", price: 120, weight: 50)

teistandars100 = TeikeigaiStandard.new(eng: "teistandars100", price: 140, weight: 100)

teistandars150 = TeikeigaiStandard.new(eng: "teistandars150", price: 210, weight: 150)

teistandars250 = TeikeigaiStandard.new(eng: "teistandars250", price: 250, weight: 250)

teistandars500 = TeikeigaiStandard.new(eng: "teistandars500", price: 390, weight: 500)

teistandars1000 = TeikeigaiStandard.new(eng: "teistandars1000", price: 580, weight: 1000)