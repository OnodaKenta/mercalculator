class Common
  attr_accessor :name
  attr_accessor :titlename
  attr_accessor :url
  attr_accessor :fee
  attr_accessor :box
  attr_accessor :price
  attr_accessor :type
  attr_accessor :anonymous
  attr_accessor :tracking
  attr_accessor :compensation
  attr_accessor :note
  attr_accessor :lside
  attr_accessor :sside
  attr_accessor :thickness
  attr_accessor :threesides
  attr_accessor :weight

  def initialize(name:, url:, fee:, box:, type:, anonymous:, tracking:, compensation:, note:)
    @name = name
    @url = url
    @fee = fee
    @box = box
    @price = fee + box
    @type = type
    @anonymous = anonymous
    @tracking = tracking
    @compensation = compensation
    @note = note
  end
end

$yuPacket = Common.new(name: "ゆうパケット", url: "/method/yuPacket", fee: 200, box: 0, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○", note: "-")
$yuPacket.lside = 34
$yuPacket.thickness = 3
$yuPacket.threesides = 60
$yuPacket.weight = 1000

$letterPackPlus = Common.new(name: "レターパックプラス", url: "/method/letterPackPlus", fee: 520, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×", note: "専用封筒入れば厚さ3cm以上可")
$letterPackPlus.lside = 34
$letterPackPlus.sside = 24.8
$letterPackPlus.weight = 4000

$takkyubinCompactThin = Common.new(name: "宅急便コンパクト薄型BOX", url: "/method/takkyubinCompact", fee: 380, box: 70, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○", note: "厚さ注意!専用薄型BOX(70円)")
$takkyubinCompactThin.lside = 34
$takkyubinCompactThin.sside = 24.8

$takkyubinCompact = Common.new(name: "宅急便コンパクト", url: "/method/takkyubinCompact", fee: 380, box: 70, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○", note: "専用BOX(70円)")
$takkyubinCompact.lside = 25
$takkyubinCompact.sside = 20
$takkyubinCompact.thickness = 5

$nothing = Common.new(name: "なし", url: "none", fee: 0, box: 0, type: "-", anonymous: "×", tracking: "×", compensation: "×", note: "-")