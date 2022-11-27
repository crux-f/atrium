# Runs from hold_chargeable_item
#
# If there are items in the left-most slot and the right-most slot of your hotbar that are not power slots, drop them.
execute if data entity @s {Inventory:[{Slot:0b}]} unless data entity @s {Inventory:[{Slot:0b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_0
execute if data entity @s {Inventory:[{Slot:8b}]} unless data entity @s {Inventory:[{Slot:0b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_8
#
# Now that the slots are empty (items cannot be picked up again for 2 ticks), give the caster their spell options.
#
#
# Air | Slot 0: Air Sigil | Slot 8: Increase Velocity
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_air_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Air Sigil I","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_air_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Increase Velocity I","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b,CustomModelData:333004} 1
#
# Earth | Slot 0: Earth Sigil | Slot 8: Natural Armor
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_earth_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Earth Sigil I","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_earth_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Natural Armor I","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}
#
# Fire | Slot 0: Fire Sigil | Slot 8: Throw Flames
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_fire_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Fire Sigil I","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_fire_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Throw Flames I","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b,CustomModelData:333004}
#
# Water | Slot 0: Water Sigil | Slot 8: Extinguish
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_water_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Water Sigil I","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_water_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Extinguish I","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}
#
# Time | Slot 0: Time Sigil | Slot 8: Desync
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_time_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Time Sigil I","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_time_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Desync I","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}
#
# Space | Slot 0: Space Sigil | Slot 8: Parallax
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_space_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Space Sigil I","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b} 1
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_space_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Parallax I","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}