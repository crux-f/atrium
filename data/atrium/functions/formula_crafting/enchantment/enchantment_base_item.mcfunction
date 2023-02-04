# Reset score
scoreboard players set @s valid_ingredients 0
# 
# Runic Enchantments
#
# Start Backstabbing I - Check NORTH WEST for any item enchanted with Piercing 
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:piercing"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:piercing"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_1
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:piercing"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:piercing"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_1
#