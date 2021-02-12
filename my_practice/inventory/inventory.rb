class Inventory

  def initialize
    @inventory = Hash.new
  end

  # CRUD Methods

  # Create(Item)
  def new_item(name, quantity)
    if @inventory[name.to_sym] != nil
      puts "ERROR: #{name} already exists, try updating it instead."
    else
      @inventory[name.to_sym] = quantity.to_i
      puts "#{quantity} #{name} added to inventory."
    end
  end

  # Read (Item)
  def view_item(name)
    if @inventory[name.to_sym] != nil
      puts "\nItem: Quantity\n-------------------- \n #{name}: #{@inventory[name.to_sym]}"
      puts ""
    else
      err_does_not_exist(name)
    end
  end

  # Read (Inventory)
  def view_inventory
    if @inventory.length != 0
      puts "\nItems: Quantity"
      @inventory.each {|item, quantity| puts "-------------------- \n #{item}: #{quantity}"}
      puts ""
    else
      puts "ERROR: Inventory is empty."
    end
  end

  # Update (Item, set quantity)
  def set_quantity(name, quantity)
    if @inventory[name.to_sym] != nil
      @inventory[name.to_sym] = quantity.to_i
      puts "#{name} updated to #{quantity}."
    else
      err_does_not_exist(name)
    end
  end

  # Update (Item, add quantity)
  def add_quantity(name, quantity)
    if @inventory[name.to_sym] != nil
      @inventory[name.to_sym] += quantity.to_i
      puts "Added #{quantity} to #{name}."
    else
      err_does_not_exist(name)
    end
  end

  # Update (Item, remove quantity)
  def remove_quantity(name, quantity)
    if @inventory[name.to_sym] != nil
      @inventory[name.to_sym] -= quantity.to_i
      puts "Removed #{quantity} from #{name}."
    else
      err_does_not_exist(name)
    end
  end

  # Delete (Item)
  def delete_item(name)
    if @inventory[name.to_sym] != nil
      @inventory.delete(name.to_sym)
      puts "#{name} deleted from inventory."
    else
      err_does_not_exist(name)
    end
  end

  private

  # Error (Does not exist)
  def err_does_not_exist(name)
    puts "ERROR: #{name} does not exist in inventory, try adding it first."
  end

end
