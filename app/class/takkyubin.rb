require "./app/class/common.rb"

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