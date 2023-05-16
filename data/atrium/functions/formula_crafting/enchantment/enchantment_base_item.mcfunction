# Reset score
scoreboard players set @s valid_ingredients 0
#
# Ingredients
#
# Start Enchantment Catalyst [Transforming] - Check SOUTH for Block of Diamond
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/catalyst_transforming
#
# Start Enchantment Catalyst [Focusing] - Check SOUTH for Block of Lapis Lazuli
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/catalyst_focusing
#
# Start Blank Slate - Check NORTH for Smooth Stone Slab
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab",Count:1b}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/blank_slate
#
# Start Copy Rune [Green] - Check NORTH for any green Runestone
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_rune_color:green}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_rune_color:green}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/copy_green_rune
#
# Start Copy Rune [Red] - Check NORTH for any red Runestone
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_rune_color:red}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_rune_color:red}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/copy_red_rune
# 
# 
# Other
#
# Start Occult Altar [Upgrade] - Check SOUTH for Block of Redstone
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/occult_altar_upgrade
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
# Start Fuse Cutter - Check NORTH WEST for any item enchanted with Blast Protection
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:blast_protection"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/fuse_cutter
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:blast_protection"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:blast_protection"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/fuse_cutter
#
# Start Shard Touch - Check NORTH WEST for any item enchanted with Silk Touch
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/shard_touch
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:silk_touch"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:silk_touch"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/shard_touch
#
# Start Sentinel - Check NORTH WEST for any item enchanted with Unbreaking
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/sentinel
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:unbreaking"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:unbreaking"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/sentinel
#
# Start Concentration I - Check NORTH WEST for any item enchanted with Respiration
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:respiration"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:respiration"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_1
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:respiration"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:respiration"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_1
#
# Start Concentration II - Check NORTH for Any Staff enchanted with Concentration I
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_concentration_lv:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_concentration_lv:1b}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_2
#
# Start Concentration III - Check NORTH for Any Staff enchanted with Concentration II
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_concentration_lv:2b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_concentration_lv:2b}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_3
#
# Start Smelting - Check NORTH WEST for any item enchanted with Fire Aspect
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:fire_aspect"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:fire_aspect"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/smelting
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:fire_aspect"}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:fire_aspect"}]}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/smelting
#
# Start FEAST - Check NORTH WEST for Cooked Porkchop
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_porkchop",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_porkchop",Count:1b}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/feast
#
# Start SURGE - Check NORTH WEST for Diamond
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/surge
#
# Items
#
# Start Totem of Undying - Check SOUTH WEST for Stripped Birch Wood
execute positioned ~-2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood",Count:1b}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/totem_of_undying
# Start Trident - Check NORTH for Diamond Sword
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:0}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:0}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/trident
# 