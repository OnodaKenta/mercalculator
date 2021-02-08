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

$lstws = []

nekoPos = Lstw.new(name: "ネコポス", eng: "nekopos", price: 175, type: "らくらくメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "長辺短辺下限あり", lside: 31.2, sside: 22.8, thickness: 3, weight: 1000)

yuPacketPost = Lstw.new(name: "ゆうパケットポスト", eng: "yupacketpost", price: 265, type: "ゆうゆうメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "専用BOX", lside: 32.7, sside: 22.8, thickness: 3, weight: 2000)

clickPost = Lstw.new(name: "クリックポスト", eng: "clickpost", price: 198, type: "日本郵便", anonymous: 0, tracking: 1, compensation: 0, note: "長辺短辺下限あり", lside: 34, sside: 25, thickness: 3, weight: 1000)

class Takkyubin < Common
  attr_accessor :threesides
  attr_accessor :weight

  def initialize(name:, eng:, price:, type:, anonymous:, tracking:, compensation:, note:, threesides:, weight:)
    @name = name
    @eng = eng
    @price = price
    @type = type
    @anonymous = anonymous
    @tracking = tracking
    @compensation = compensation
    @note = note
    @threesides = threesides
    @weight = weight
    $takkyubins.push(self)
  end
end

$takkyubins = []

tbin60 = Takkyubin.new(name: "宅急便60サイズ", eng: "takkyubin60", price: 700, type: "らくらくメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "-", threesides: 60, weight: 2000)

tbin80 = Takkyubin.new(name: "宅急便80サイズ", eng: "takkyubin80", price: 800, type: "らくらくメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "-", threesides: 80, weight: 5000)
