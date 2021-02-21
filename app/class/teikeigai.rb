require "./app/class/common.rb"

class TeikeigaiStandard < Common
  def initialize(eng:, price:, weight:)
    @name = "定形外郵便 規格内"
    @eng = eng
    @price = price
    @type = "日本郵便"
    @anonymous = 0
    @tracking = 0
    @compensation = 0
    @note = "筒状のものもOK"
    @lside = 34
    @sside = 25
    @thickness = 3
    @weight = weight
    $teikeigaistandards.push(self)
  end
end

class TeikeigaiNonStandard < Common
  def initialize(eng:, price:, weight:)
    @name = "定形外郵便 規格外"
    @eng = eng
    @price = price
    @type = "日本郵便"
    @anonymous = 0
    @tracking = 0
    @compensation = 0
    @note = "筒状のものもOK"
    @lside = 60
    @threesides = 90
    @weight = weight
    $teikeigainonstandards.push(self)
  end
end

$teikeigaistandards = []
$teikeigainonstandards = []

teistandard50 = TeikeigaiStandard.new(eng: "teistandard50", price: 120, weight: 50)
teistandard100 = TeikeigaiStandard.new(eng: "teistandard100", price: 140, weight: 100)
teistandard150 = TeikeigaiStandard.new(eng: "teistandard150", price: 210, weight: 150)
teistandard250 = TeikeigaiStandard.new(eng: "teistandard250", price: 250, weight: 250)
teistandard500 = TeikeigaiStandard.new(eng: "teistandard500", price: 390, weight: 500)
teistandard1000 = TeikeigaiStandard.new(eng: "teistandard1000", price: 580, weight: 1000)

teinonstandard50 = TeikeigaiNonStandard.new(eng: teinonstandard50, price: 200, weight: 50)
teinonstandard100 = TeikeigaiNonStandard.new(eng: teinonstandard100, price: 220, weight: 100)
teinonstandard150 = TeikeigaiNonStandard.new(eng: teinonstandard150, price: 300, weight: 150)
teinonstandard250 = TeikeigaiNonStandard.new(eng: teinonstandard250, price: 350, weight: 250)
teinonstandard500 = TeikeigaiNonStandard.new(eng: teinonstandard500, price: 510, weight: 500)
teinonstandard1000 = TeikeigaiNonStandard.new(eng: teinonstandard1000, price: 710, weight: 1000)
teinonstandard2000 = TeikeigaiNonStandard.new(eng: teinonstandard2000, price: 1040, weight: 2000)
teinonstandard4000 = TeikeigaiNonStandard.new(eng: teinonstandard4000, price: 1350, weight: 4000)