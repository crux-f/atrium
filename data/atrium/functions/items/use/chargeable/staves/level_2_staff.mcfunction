# Runs from hold_chargeable_item
#
# If there are items in the two left-most slot and the right-most slot of your hotbar that are not power slots, drop them.
execute if data entity @s {Inventory:[{Slot:0b}]} unless data entity @s {Inventory:[{Slot:0b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_0
execute if data entity @s {Inventory:[{Slot:8b}]} unless data entity @s {Inventory:[{Slot:8b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_8
execute if data entity @s {Inventory:[{Slot:1b}]} unless data entity @s {Inventory:[{Slot:1b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_1
execute if data entity @s {Inventory:[{Slot:7b}]} unless data entity @s {Inventory:[{Slot:7b,tag:{atrium_power:1b}}]} run function atrium:items/slot_control/drop_item_7
#
# Now that the slots are empty (items cannot be picked up again for 2 ticks), give the caster their spell options.
#
#
# Air | Slot 0: Air Sigil | Slot 8: Increase Velocity | Slot 7: ? | Slot 8: ? |
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_air_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Air Sigil II","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_air_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Increase Velocity II","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}
#
# Earth | Slot 0: Earth Sigil | Slot 8: Natural Armor
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_earth_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Earth Sigil II","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_earth_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Natural Armor II","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}
#
# Fire | Slot 0: Fire Sigil | Slot 8: Throw Flames
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_fire_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Fire Sigil II","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_fire_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Throw Flames II","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}
#
# Water | Slot 0: Water Sigil | Slot 8: Extinguish
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_water_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Water Sigil II","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_water_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Extinguish II","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}
#
# Time | Slot 0: Time Sigil | Slot 8: Desync
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_time_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Time Sigil II","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_time_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Desync II","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}
#
# Space | Slot 0: Space Sigil | Slot 8: Parallax
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_space_staff:1b}}]} run item replace entity @s hotbar.0 with minecraft:firework_star{display:{Name:'{"text":"Cast: Space Sigil II","color":"gray","italic":false}'},atrium_power_slot:0b,atrium_power:1b}
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_space_staff:1b}}]} run item replace entity @s hotbar.8 with minecraft:firework_star{display:{Name:'{"text":"Cast: Parallax II","color":"gray","italic":false}'},atrium_power_slot:8b,atrium_power:1b}