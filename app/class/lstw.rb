require "./app/class/common.rb"

class Lstw < Common
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
smartLetter = Lstw.new(name: "スマートレター", eng: "smartletter", price: 180, type: "日本郵便", anonymous: 0, tracking: 0, compensation: 0, note: "専用封筒A5サイズ", lside: 25, sside: 17, thickness: 2, weight: 1000)
letterPackLight = Lstw.new(name: "レターパックライト", eng: "letterpacklight", price: 370, type: "日本郵便", anonymous: 0, tracking: 1, compensation: 0, note: "専用封筒A4サイズ", lside: 34, sside: 24.8, thickness: 3, weight: 4000)
yuPacketPlus = Lstw.new(name: "ゆうパケットプラス", eng: "yupacketplus", price: 440, type: "ゆうゆうメルカリ便", anonymous: 1, tracking: 1, compensation: 1, note: "専用BOX", lside: 24, sside: 17, thickness: 7, weight: 2000)