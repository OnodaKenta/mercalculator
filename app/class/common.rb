class Common
  @@commons = []
  attr_reader :name, :url, :fee, :box, :type, :anonymous, :tracking, :compensation
  attr_accessor :lside, :sside, :thickness, :threesides, :weight, :titlename

  def initialize(name:, url:, fee:, box:, type:, anonymous:, tracking:, compensation:, array: @@commons)
    @name = name
    @url = url
    @fee = fee
    @box = box
    @type = type
    @anonymous = anonymous
    @tracking = tracking
    @compensation = compensation
    pusharray(array)
  end

  def price
    @fee + @box
  end

  def pusharray(parray)
    parray.push(self)
  end

  def self.classarray
    @@commons
  end
end