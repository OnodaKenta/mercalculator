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