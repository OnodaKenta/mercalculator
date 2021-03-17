require "./app/class/common.rb"

class Lstw < Common
  @@lstws = []
  def initialize(name:, url:, fee:, box:, type:, anonymous:, tracking:, compensation:, lside:, sside:, thickness:, weight:, array: @@lstws)
    @name = name
    @url = url
    @fee = fee
    @box = box
    @type = type
    @anonymous = anonymous
    @tracking = tracking
    @compensation = compensation
    @lside = lside
    @sside = sside
    @thickness = thickness
    @weight = weight
    pusharray(array)
  end

  def self.classarray
    @@lstws
  end
end