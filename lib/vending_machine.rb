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
    @inventory.map do |snack|
      snack.name
    end
  end

  def how_many_snacks
    #returns a hash 
    @inventory.group_by do |snack|
      snack.quantity
    end
  end

end #class end