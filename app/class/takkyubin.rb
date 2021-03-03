require "./app/class/common.rb"

class Takkyubin < Common
  def initialize(name:, fee:, threesides:, weight:)
    @name = name
    @url = "/method/takkyubin"
    @fee = fee
    @box = 0
    @type = "らくらくメルカリ便"
    @anonymous = "○"
    @tracking = "○"
    @compensation = "○"
    @threesides = threesides
    @weight = weight
    $takkyubins.push(self)
  end
end

$takkyubins = []

$takkyubin = Takkyubin.new(name: "宅急便60サイズ", fee: 700, threesides: 60, weight: 2000)
$takkyubin.titlename = "宅急便"
takkyubin80 = Takkyubin.new(name: "宅急便80サイズ", fee: 800, threesides: 80, weight: 5000)
takkyubin100 = Takkyubin.new(name: "宅急便100サイズ", fee: 1000, threesides: 100, weight: 10000)
takkyubin120 = Takkyubin.new(name: "宅急便120サイズ", fee: 1100, threesides: 120, weight: 15000)
takkyubin140 = Takkyubin.new(name: "宅急便140サイズ", fee: 1300, threesides: 140, weight: 20000)
takkyubin160 = Takkyubin.new(name: "宅急便160サイズ", fee: 1600, threesides: 160, weight: 25000)