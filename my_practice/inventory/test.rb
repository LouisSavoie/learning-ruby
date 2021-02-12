require_relative 'inventory'
require_relative 'item'

# tests inventory
crafts = Inventory.new

puts "\n _-TESTING: view_inventory: ERR inventory empty"
crafts.view_inventory

puts "\n _-TESTING: new_item: success x3, ERR already exists"
crafts.new_item("glue", 2)
crafts.new_item("sticks", 300)
crafts.new_item("paper", 150)
crafts.new_item("glue", 2)

puts "\n _-TESTING: view_item: success, ERR doesn't exist"
crafts.view_item("sticks")
crafts.view_item("tape")

puts "\n _-TESTING: view_inventory: success"
crafts.view_inventory

puts "\n _-TESTING: set_quantity: success, view item's new quantity, ERR doesn't exist"
crafts.set_quantity("glue", "4")
crafts.view_item("glue")
crafts.set_quantity("tape", "4")

puts "\n _-TESTING: add_quantity: success, view item's new quantity, ERR doesn't exist"
crafts.add_quantity("glue", "4")
crafts.view_item("glue")
crafts.add_quantity("tape", "4")

puts "\n _-TESTING: remove_quantity: success, view item's new quantity, ERR doesn't exist"
crafts.remove_quantity("glue", "4")
crafts.view_item("glue")
crafts.remove_quantity("tape", "4")

puts "\n _-TESTING: delete_item: success, ERR doesn't exist x2"
crafts.delete_item("glue")
crafts.delete_item("glue")
crafts.delete_item("tape")