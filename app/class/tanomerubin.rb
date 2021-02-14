require "./app/class/common.rb"

class Tanomerubin < Common
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