# Runs from hold_chargeable_item
#
# If there are items in the two left-most slot and the right-most slot of your hotbar that are not power slots, drop them.
# Do the same for the middle slot, where the ultimate spell goes.
execute if data entity @s {Inventory:[{Slot:0b}]} unless data entity @s {Inventory:[{Slot:0b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_0
execute if data entity @s {Inventory:[{Slot:8b}]} unless data entity @s {Inventory:[{Slot:8b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_8
# execute if data entity @s {Inventory:[{Slot:1b}]} unless data entity @s {Inventory:[{Slot:1b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_1
# execute if data entity @s {Inventory:[{Slot:7b}]} unless data entity @s {Inventory:[{Slot:7b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_7
execute if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{Slot:4b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_4
#
# Now that the slots are empty (items cannot be picked up again for 2 ticks), give the caster their spell options.
#
#
# Air | Slot 0: Air Sigil | Slot 8: Increase Velocity
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_air_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Air Sigil III","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b,CustomModelData:333004} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_air_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Increase Velocity III","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b,CustomModelData:333005} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_air_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Dance","color":"dark_gray","italic":false}'},atrium_power_slot:4b,atrium_power:1b,CustomModelData:333028} 1
#
# Earth | Slot 0: Earth Sigil | Slot 8: Natural Armor
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_earth_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Earth Sigil III","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b,CustomModelData:333006} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_earth_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Natural Armor III","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b,CustomModelData:333007}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_earth_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Return","color":"dark_gray","italic":false}'},atrium_power_slot:4b,atrium_power:1b,CustomModelData:333029} 1
#
# Fire | Slot 0: Fire Sigil | Slot 8: Throw Flames
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_fire_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Fire Sigil III","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b,CustomModelData:333008} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_fire_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Throw Flames III","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b,CustomModelData:333009} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_fire_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Meteor","color":"dark_gray","italic":false}'},atrium_power_slot:4b,atrium_power:1b,CustomModelData:333030} 1
#
# Water | Slot 0: Water Sigil | Slot 8: Extinguish
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_water_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Water Sigil III","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b,CustomModelData:333010} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_water_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Extinguish III","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b,CustomModelData:333011} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_water_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Flush","color":"dark_gray","italic":false}'},atrium_power_slot:4b,atrium_power:1b,CustomModelData:333031} 1
#
# Time | Slot 0: Time Sigil | Slot 8: Desync
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_time_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Time Sigil III","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b,CustomModelData:333012} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_time_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Desync III","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b,CustomModelData:333013} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_time_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: ???","color":"dark_gray","italic":false}'},atrium_power_slot:4b,atrium_power:1b,CustomModelData:333032} 1
#
# Space | Slot 0: Space Sigil | Slot 8: Parallax
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_space_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Space Sigil III","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b,CustomModelData:333014} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_space_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Parallax III","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b,CustomModelData:333015} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_space_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: ???","color":"dark_gray","italic":false}'},atrium_power_slot:4b,atrium_power:1b,CustomModelData:333033} 1