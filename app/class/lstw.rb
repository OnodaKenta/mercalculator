require "./app/class/common.rb"

class Lstw < Common
  def initialize(name:, url:, fee:, box:, type:, anonymous:, tracking:, compensation:, lside:, sside:, thickness:, weight:)
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
    $lstws.push(self)
  end
end

$lstws = []

$nekoPos = Lstw.new(name: "ネコポス", url: "/method/nekoPos", fee: 175, box: 0, type: "らくらくメルカリ便", anonymous: "○", tracking: "○", compensation: "○", lside: 31.2, sside: 22.8, thickness: 3, weight: 1000)
$yuPacketPost = Lstw.new(name: "ゆうパケットポスト", url: "/method/yuPacketPost", fee: 200, box: 65, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○", lside: 32.7, sside: 22.8, thickness: 3, weight: 2000)
$clickPost = Lstw.new(name: "クリックポスト", url: "/method/clickPost", fee: 198, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×", lside: 34, sside: 25, thickness: 3, weight: 1000)
$smartLetter = Lstw.new(name: "スマートレター", url: "/method/smartLetter", fee: 180, box: 0, type: "日本郵便", anonymous: "×", tracking: "×", compensation: "×", lside: 25, sside: 17, thickness: 2, weight: 1000)
$letterPackLight = Lstw.new(name: "レターパックライト", url: "/method/letterPackLight", fee: 370, box: 0, type: "日本郵便", anonymous: "×", tracking: "○", compensation: "×", lside: 34, sside: 24.8, thickness: 3, weight: 4000)
$yuPacketPlus = Lstw.new(name: "ゆうパケットプラス", url: "/method/yuPacketPlus", fee: 375, box: 65, type: "ゆうゆうメルカリ便", anonymous: "○", tracking: "○", compensation: "○", lside: 24, sside: 17, thickness: 7, weight: 2000)