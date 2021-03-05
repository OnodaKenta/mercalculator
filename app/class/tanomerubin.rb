require "./app/class/common.rb"

class Tanomerubin < Common
  @@tanomerubins = []
  def initialize(name:, fee:, threesides:, array: @@tanomerubins)
    @name = name
    @url = "/method/tanomerubin"
    @fee = fee
    @box = 0
    @type = "梱包・発送たのメル便"
    @anonymous = "○"
    @tracking = "○"
    @compensation = "○"
    @lside = 250
    @threesides = threesides
    @weight = 150000
    pusharray(array)
  end

  def self.classarray
    @@tanomerubins
  end
end

tanomerubin80 = Tanomerubin.new(name: "梱包・発送たのメル便80サイズ", fee: 1700, threesides: 80)
tanomerubin80.titlename = "梱包・発送たのメル便"
tanomerubin120 = Tanomerubin.new(name: "梱包・発送たのメル便120サイズ", fee: 2400, threesides: 120)
tanomerubin160 = Tanomerubin.new(name: "梱包・発送たのメル便160サイズ", fee: 3400, threesides: 160)
tanomerubin200 = Tanomerubin.new(name: "梱包・発送たのメル便200サイズ", fee: 5000, threesides: 200)
tanomerubin250 = Tanomerubin.new(name: "梱包・発送たのメル便250サイズ", fee: 8600, threesides: 250)
tanomerubin300 = Tanomerubin.new(name: "梱包・発送たのメル便300サイズ", fee: 12000, threesides: 300)
tanomerubin350 = Tanomerubin.new(name: "梱包・発送たのメル便350サイズ", fee: 18500, threesides: 350)
tanomerubin400 = Tanomerubin.new(name: "梱包・発送たのメル便400サイズ", fee: 25400, threesides: 400)
tanomerubin450 = Tanomerubin.new(name: "梱包・発送たのメル便450サイズ", fee: 33000, threesides: 450)