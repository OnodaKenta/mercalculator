require "./app/class/common.rb"

class TeikeigaiStandard < Common
  def initialize(price:, weight:)
    @name = "定形外郵便 規格内"
    @url = "/method/teikeigai"
    @price = price
    @type = "日本郵便"
    @anonymous = "×"
    @tracking = "×"
    @compensation = "×"
    @note = "筒状のものもOK"
    @lside = 34
    @sside = 25
    @thickness = 3
    @weight = weight
    $teikeigaistandards.push(self)
  end
end

class TeikeigaiNonStandard < Common
  def initialize(price:, weight:)
    @name = "定形外郵便 規格外"
    @url = "/method/teikeigai"
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

$teikeigai = TeikeigaiStandard.new(price: 120, weight: 50)
$teikeigai.titlename = "定形外郵便"
teikeigaistandard100 = TeikeigaiStandard.new(price: 140, weight: 100)
teikeigaistandard150 = TeikeigaiStandard.new(price: 210, weight: 150)
teikeigaistandard250 = TeikeigaiStandard.new(price: 250, weight: 250)
teikeigaistandard500 = TeikeigaiStandard.new(price: 390, weight: 500)
teikeigaistandard1000 = TeikeigaiStandard.new(price: 580, weight: 1000)

$teikeigainonstandard = TeikeigaiNonStandard.new(price: 200, weight: 50)
teikeigainonstandard100 = TeikeigaiNonStandard.new(price: 220, weight: 100)
teikeigainonstandard150 = TeikeigaiNonStandard.new(price: 300, weight: 150)
teikeigainonstandard250 = TeikeigaiNonStandard.new(price: 350, weight: 250)
teikeigainonstandard500 = TeikeigaiNonStandard.new(price: 510, weight: 500)
teikeigainonstandard1000 = TeikeigaiNonStandard.new(price: 710, weight: 1000)
teikeigainonstandard2000 = TeikeigaiNonStandard.new(price: 1040, weight: 2000)
teikeigainonstandard4000 = TeikeigaiNonStandard.new(price: 1350, weight: 4000)