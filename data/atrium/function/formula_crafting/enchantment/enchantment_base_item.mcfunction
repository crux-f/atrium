# Reset score
scoreboard players set @s valid_ingredients 0
#
# Ingredients
#
# Start Enchantment Catalyst [Transforming] - Check SOUTH for Block of Diamond
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_block"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/catalyst_transforming
#
# Start Enchantment Catalyst [Focusing] - Check SOUTH for Block of Lapis Lazuli
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/catalyst_focusing
#
# Start Blank Slate - Check NORTH for Smooth Stone Slab
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/blank_slate
#
# Start Copy Rune [Green] - Check NORTH for any green Runestone
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune_color:"green"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune_color:"green"}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/copy_green_rune
#
# Start Copy Rune [Red] - Check NORTH for any red Runestone
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune_color:"red"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune_color:"red"}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/copy_red_rune
# 
# Start Forgotten Runestone - Check NORTH for Blank Slate
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune:"blank"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune:"blank"}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/forgotten_runestone
#
# Start Dilution Matrix - Check NORTH for Blooming Crystal
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/dilution_matrix
#
# 
# Other
#
# Start Occult Altar [Upgrade] - Check SOUTH for Block of Redstone
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/occult_altar_upgrade
# 
# Runic Enchantments
#
# Start Backstabbing I - Check NORTH WEST for any item enchanted with Piercing 
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{levels:{"minecraft:piercing":1}}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{levels:{"minecraft:piercing":1}}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_1
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{levels:{"minecraft:piercing":1}}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{levels:{"minecraft:piercing":1}}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_1
#
# Start Backstabbing II - Check NORTH for Any Sword enchanted with Backstabbing I
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{atrium_backstabbing_lv:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{atrium_backstabbing_lv:1b}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_2
#
# Start Backstabbing III - Check NORTH for Any Sword enchanted with Backstabbing II
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{atrium_backstabbing_lv:2b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{atrium_backstabbing_lv:2b}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_3
#
# Start Fuse Cutter - Check NORTH WEST for any item enchanted with Blast Protection
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":1}}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":1}}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/fuse_cutter
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{levels:{"minecraft:blast_protection":1}}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{levels:{"minecraft:blast_protection":1}}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/fuse_cutter
#
# Start Shard Touch - Check NORTH WEST for any item enchanted with Silk Touch
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/shard_touch
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{levels:{"minecraft:silk_touch":1}}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{levels:{"minecraft:silk_touch":1}}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/shard_touch
#
# Start Sentinel - Check NORTH WEST for any item enchanted with Unbreaking
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{levels:{"minecraft:unbreaking":1}}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{levels:{"minecraft:unbreaking":1}}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/sentinel
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{levels:{"minecraft:unbreaking":1}}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{levels:{"minecraft:unbreaking":1}}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/sentinel
#
# Start Concentration I - Check NORTH WEST for any item enchanted with Respiration
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{Enchantments:[{id:"minecraft:respiration"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{Enchantments:[{id:"minecraft:respiration"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_1
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{StoredEnchantments:[{id:"minecraft:respiration"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{StoredEnchantments:[{id:"minecraft:respiration"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_1
#
# Start Concentration II - Check NORTH for Any Staff enchanted with Concentration I
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{atrium_concentration_lv:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{atrium_concentration_lv:1b}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_2
#
# Start Concentration III - Check NORTH for Any Staff enchanted with Concentration II
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{atrium_concentration_lv:2b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{atrium_concentration_lv:2b}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_3
#
# Start Smelting - Check NORTH WEST for any item enchanted with Fire Aspect
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{Enchantments:[{id:"minecraft:fire_aspect"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{Enchantments:[{id:"minecraft:fire_aspect"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/smelting
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{StoredEnchantments:[{id:"minecraft:fire_aspect"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{StoredEnchantments:[{id:"minecraft:fire_aspect"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/smelting
#
# Start FEAST - Check NORTH WEST for Cooked Porkchop
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_porkchop"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_porkchop"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/feast
#
# Start SURGE - Check NORTH WEST for Diamond
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/surge
#
# Items
#
# Start Totem of Undying - Check SOUTH WEST for Stripped Birch Wood
execute positioned ~-2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/totem_of_undying
# Start Trident - Check NORTH for Diamond Sword
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",components:{Damage:0}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",components:{Damage:0}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/trident
# 