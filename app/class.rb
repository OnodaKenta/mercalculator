class Common
  attr_accessor :name
  attr_accessor :eng
  attr_accessor :price
  attr_accessor :type
  attr_accessor :anonymous
  attr_accessor :tracking
  attr_accessor :compensation
  attr_accessor :note

  def initialize(name:, eng:, price:, type:, anonymous:, tracking:, compensation:, note:)
    @name = name
    @eng = eng
    @price = price
    @type = type
    @anonymous = anonymous
    @tracking = tracking
    @compensation = compensation
    @note = note
  end
end

class Lstw < Common
  attr_accessor :lside
  attr_accessor :sside
  attr_accessor :thickness
  attr_accessor :weight

  def initialize(name:, eng:, price:, type:, anonymous:, tracking:, compensation:, note:, lside:, sside:, thickness:, weight:)
    @name = name
    @eng = eng
    @price = price
    @type = type
    @anonymous = anonymous
    @tracking = tracking
    @compensation = compensation
    @note = note
    @lside = lside
    @sside = sside
    @thickness = thickness
    @weight = weight
    $lstws.push(self)
  end
end