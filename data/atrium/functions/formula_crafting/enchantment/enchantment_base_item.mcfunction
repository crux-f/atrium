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
# Start Backstabbing II - Check NORTH for Any Sword enchanted with Backstabbing I
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_backstabbing_lv:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_backstabbing_lv:1b}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_2
#
# Start Backstabbing III - Check NORTH for Any Sword enchanted with Backstabbing II
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_backstabbing_lv:2b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_backstabbing_lv:2b}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_3
#
# Start Fuse Cutter I - Check NORTH WEST for any item enchanted with Blast Protection
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/fuse_cutter
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:blast_protection"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:blast_protection"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/fuse_cutter
#