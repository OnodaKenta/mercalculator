class Common
  attr_accessor :name
  attr_accessor :eng
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

$yuPacket = Common.new(name: "ゆうパケット", eng: "yupacket", price: 200, type: "ゆうゆうメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "-")
$yuPacket.lside = 34
$yuPacket.thickness = 3
$yuPacket.threesides = 60
$yuPacket.weight = 1000

$letterPackPlus = Common.new(name: "レターパックプラス", eng: "letterpackplus", price: 520, type: "日本郵便", anonymous: 0, tracking: 1, compensation: 0, note: "専用封筒入れば厚さ3cm以上可")
$letterPackPlus.lside = 34
$letterPackPlus.sside = 24.8
$letterPackPlus.weight = 4000

$takkyubinCompactThin = Common.new(name: "宅急便コンパクト薄型BOX", eng:"takkyubincompactthin", price: 450, type: "らくらくメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "厚さ注意!専用薄型BOX(70円)")
$takkyubinCompactThin.lside = 34
$takkyubinCompactThin.sside = 24.8
