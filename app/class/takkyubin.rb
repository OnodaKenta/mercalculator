require "./app/class/common.rb"

class Takkyubin < Common
  @@takkyubins = []
  def initialize(name:, fee:, threesides:, weight:, array: @@takkyubins)
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
    pusharray(array)
  end

  def self.classarray
    @@takkyubins
  end
end