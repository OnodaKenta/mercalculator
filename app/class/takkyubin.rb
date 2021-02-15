require "./app/class/common.rb"

class Takkyubin < Common
  attr_accessor :threesides
  attr_accessor :weight

  def initialize(name:, eng:, price:, threesides:, weight:)
    @name = name
    @eng = eng
    @price = price
    @type = "らくらくメルカリ便"
    @anonymous = 1
    @tracking = 1
    @compensation = 1
    @note = "-"
    @threesides = threesides
    @weight = weight
    $takkyubins.push(self)
  end
end

$takkyubins = []

tbin60 = Takkyubin.new(name: "宅急便60サイズ", eng: "takkyubin60", price: 700, threesides: 60, weight: 2000)

tbin80 = Takkyubin.new(name: "宅急便80サイズ", eng: "takkyubin80", price: 800, threesides: 80, weight: 5000)

tbin100 = Takkyubin.new(name: "宅急便100サイズ", eng: "takkyubin100", price: 1000, threesides: 100, weight: 10000)

tbin120 = Takkyubin.new(name: "宅急便120サイズ", eng: "takkyubin120", price: 1100, threesides: 120, weight: 15000)

tbin140 = Takkyubin.new(name: "宅急便140サイズ", eng: "takkyubin140", price: 1300, threesides: 140, weight: 20000)

tbin160 = Takkyubin.new(name: "宅急便160サイズ", eng: "takkyubin160", price: 1600, threesides: 160, weight: 25000)