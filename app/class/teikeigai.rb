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
  @@teikeigainonstandards = []
  def initialize(fee:, weight:, array: @@teikeigainonstandards)
    @name = "定形外郵便 規格外"
    @url = "/method/teikeigai"
    @fee = fee
    @box = 0
    @type = "日本郵便"
    @anonymous = "×"
    @tracking = "×"
    @compensation = "×"
    @note = "筒状のものもOK"
    @lside = 60
    @threesides = 90
    @weight = weight
    pusharray(array)
  end

  def self.classarray
    @@teikeigainonstandards
  end
end