require './lib/snack'

class VendingMachine
  attr_reader :inventory

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
    string = ""
    @inventory.each do |snack|
      string = string + snack.name[0]
    end
    string
  end

  def change_indexes
    #returns an array with the index numbers, now changed
    @inventory.each do |snack|
    end
  end

end #class end