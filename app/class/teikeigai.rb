require "./app/class/common.rb"

class TeikeigaiStandard < Common
  @@teikeigaistandards = []
  def initialize(fee:, weight:, array: @@teikeigaistandards)
    @name = "定形外郵便 規格内"
    @url = "/method/teikeigai"
    @fee = fee
    @box = 0
    @type = "日本郵便"
    @anonymous = "×"
    @tracking = "×"
    @compensation = "×"
    @lside = 34
    @sside = 25
    @thickness = 3
    @weight = weight
    pusharray(array)
  end

  def self.classarray
    @@teikeigaistandards
  end

end

class TeikeigaiNonStandard < Common
  def initialize(fee:, weight:)
    @name = "定形外郵便 規格外"
    @url = "/method/teikeigai"
    @fee = fee
    @box = 0
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

$teikeigainonstandards = []

$teikeigainonstandard = TeikeigaiNonStandard.new(fee: 200, weight: 50)
teikeigainonstandard100 = TeikeigaiNonStandard.new(fee: 220, weight: 100)
teikeigainonstandard150 = TeikeigaiNonStandard.new(fee: 300, weight: 150)
teikeigainonstandard250 = TeikeigaiNonStandard.new(fee: 350, weight: 250)
teikeigainonstandard500 = TeikeigaiNonStandard.new(fee: 510, weight: 500)
teikeigainonstandard1000 = TeikeigaiNonStandard.new(fee: 710, weight: 1000)
teikeigainonstandard2000 = TeikeigaiNonStandard.new(fee: 1040, weight: 2000)
teikeigainonstandard4000 = TeikeigaiNonStandard.new(fee: 1350, weight: 4000)