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

yuPacket = Common.new(name: "ゆうパケット", url: "/method/yuPacket", fee: 200, box: 0, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○")
yuPacket.lside = 34
yuPacket.thickness = 3
yuPacket.threesides = 60
yuPacket.weight = 1000

letterPackPlus = Common.new(name: "レターパックプラス", url: "/method/letterPackPlus", fee: 520, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×")
letterPackPlus.lside = 34
letterPackPlus.sside = 24.8
letterPackPlus.weight = 4000

takkyubinCompact = Common.new(name: "宅急便コンパクト", url: "/method/takkyubinCompact", fee: 380, box: 70, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○")
takkyubinCompact.lside = 25
takkyubinCompact.sside = 20
takkyubinCompact.thickness = 5

takkyubinCompactThin = Common.new(name: "宅急便コンパクト薄型BOX", url: "/method/takkyubinCompact", fee: 380, box: 70, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○")
takkyubinCompactThin.lside = 34
takkyubinCompactThin.sside = 24.8

nothing = Common.new(name: "なし", url: "none", fee: 0, box: 0, type: "-", anonymous: "×", tracking: "×", compensation: "×")