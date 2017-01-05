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
    @inventory.group_by do |snack|
      snack.quantity
    end
  end

  def inventory_by_alphabet
    @inventory.group_by do |snack|
      snack.name[0]
    end
  end

  def total_num_items
    counter_hash = how_many_snacks
    total = 0
    counter_hash.each_key do |key|
      total = total + key.to_i
      end
    total
  end

  def first_letters
    
  end

end #class end