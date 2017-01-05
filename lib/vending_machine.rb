require './lib/snack'

class VendingMachine
  attr_accessor :inventory

  def initialize
    @inventory = []
  end

  def add_snack(snack)
    @inventory << snack
  end

  def snacks_by_name
    @inventory.
  end

end #class end