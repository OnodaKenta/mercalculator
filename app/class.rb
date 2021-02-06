class Common
  attr_accessor :name
  attr_accessor :price
  attr_accessor :type
  attr_accessor :anonymous
  attr_accessor :tracking
  attr_accessor :compensation
  attr_accessor :note

  def initialize(name:, price:, type:, anonymous:, tracking:, compensation:, note:)
    @name = name
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

  def initialize(name:, price:, type:, anonymous:, tracking:, compensation:, note:, lside:, sside:, thickness:, weight:)
    @name = name
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
    $instances.push(self)
  end
end