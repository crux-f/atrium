# Reset score
scoreboard players set @s valid_ingredients 0
#
# Research Infusion (Transform Infusion Research items into Formulas) - Check NORTH for Infusion Research
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{atrium_research_type:"infusion"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{atrium_research_type:"infusion"}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/create_infusion_formula
#
# Crafting Components
#
# Start Inert Focus - Check CENTER SOUTH for Diamond
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/inert_focus
# Start Infusion Catalyst [Harmonizing] - Check EAST for Block of Amethyst
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:amethyst_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:amethyst_block"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/catalyst_harmonizing
# Start Infusion Catalyst [Reverberating] - Check EAST for Block of Quartz
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz_block"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/catalyst_reverberating
# Start Ambient Crystal - Check NORTH for Rumbling Crystal
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rumbling_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rumbling_crystal:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/ambient_crystal
# Start Calm Crystal - Check NORTH for Subdued Crystal
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_subdued_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_subdued_crystal:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/calm_crystal
# Start Eager Crystal - Check NORTH for Blooming Crystal
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/eager_crystal
# Start Mountain's Root - Check NORTH for Stone
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/mountains_root
# Start Hellish Lantern - Check CENTER NORTH for Carved Pumpkin
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:carved_pumpkin"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:carved_pumpkin"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/hellish_lantern
# Start Life's Echo - Check CENTER NORTH for Stripped Crimson Hyphae
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_crimson_hyphae"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_crimson_hyphae"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/lifes_echo
#
# Equipment
#
# Start Staff of Air (+1) - Check NORTH for Glowstone Dust
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/air_staff_1
# Start Staff of Earth (+1) - Check NORTH for Emerald
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/earth_staff_1
# Start Staff of Fire (+1) - Check NORTH for Redstone
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/fire_staff_1
# Start Staff of Water (+1) - Check NORTH for Lapis Lazuli
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_lazuli"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_lazuli"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/water_staff_1
# Start Staff of Time (+1) - Check NORTH for Nether Quartz
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/time_staff_1
# Start Staff of Space (+1) - Check NORTH for Coal
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:coal"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:coal"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/space_staff_1
#
# Start Staff of Air (+2) - Check NORTH for Glowstone Dust
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/air_staff_2
# Start Staff of Earth (+2) - Check NORTH for Block of Emerald
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_block"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/earth_staff_2
# Start Staff of Fire (+2) - Check NORTH for Block of Redstone
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/fire_staff_2
# Start Staff of Water (+2) - Check NORTH for Block of Lapis Lazuli
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/water_staff_2
# Start Staff of Time (+2) - Check NORTH for Nether Quartz
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/time_staff_2
# Start Staff of Space (+2) - Check NORTH for Block of Coal
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:coal_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:coal_block"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/space_staff_2
#
# Start Staff of Air (+3) - Check NORTH for Ambient Crystal
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_ambient_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_ambient_crystal:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/air_staff_3
# Start Staff of Earth (+3) - Check NORTH for Mountain's Root
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_mountains_root:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_mountains_root:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/earth_staff_3
# Start Staff of Fire (+3) - Check NORTH for Hellish Lantern [Power III]
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_hellish_lantern:1b,atrium_fireballs:10b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_hellish_lantern:1b,atrium_fireballs:10b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/fire_staff_3
# Start Staff of Water (+3) - Check NORTH for Heart of the Sea
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:heart_of_the_sea"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:heart_of_the_sea"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/water_staff_3
# Start Staff of Time (+3) - Check NORTH for Eternal Hourglass
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_eternal_hourglass:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_eternal_hourglass:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/time_staff_3
# Start Staff of Space (+3) - Check NORTH for Deep Crystal
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_deep_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_deep_crystal:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/space_staff_3
#
# Start Frigid Staff - Check NORTH for Everglacier
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_everglacier:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_everglacier:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/frigid_staff
# Start Melodic Staff - Check NORTH for Jukebox
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:jukebox"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:jukebox"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/melodic_staff
# Start Mercurial Staff - Check NORTH for Dilution Matrix
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dilution_matrix:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_dilution_matrix:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/mercurial_staff
# Start Molten Staff - Check NORTH for Lava Bucket
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lava_bucket"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lava_bucket"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/molten_staff
# Start Verdant Staff - Check NORTH for Spore Blossom
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:spore_blossom"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:spore_blossom"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/verdant_staff
# Start Voltaic Staff - Check NORTH for Cyclone Cube
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_cyclone_cube:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_cyclone_cube:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/voltaic_staff
#
# Start Rod of Relocation - Check CENTER NORTH for Slimeball
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:slime_ball"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:slime_ball"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/rod_of_relocation
# Start Dreamer's Wings - Check CENTER NORTH for Corrupted Wings
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_corrupted_wings:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_corrupted_wings:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/dreamers_wings
#
# Other
#
# Start Wolf Enchantment [Hunting] - Check CENTER NORTH for Hunting Trophy (Zombie)
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_zombie_trophy:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_zombie_trophy:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/wolf_hunting
# Start Wolf Enchantment [Ricochet Pelt] - Check CENTER NORTH for Hunting Trophy (Skeleton)
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_skeleton_trophy:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_skeleton_trophy:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/wolf_ricochet_pelt
# Start Wolf Enchantment [Tracking] - Check CENTER NORTH for Hunting Trophy (Spider)
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_spider_trophy:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_spider_trophy:1b}}}}] at @s run function atrium:formula_crafting/infusion/i_recipes/wolf_tracking
# Start Centurion Golem - Check NORTH for Jack o' Lantern
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:jack_o_lantern"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:jack_o_lantern"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/centurion_golem
#
# Upgrades
#
# Start Warp Gate - Check NORTH for Lodestone
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lodestone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lodestone"}}] at @s run function atrium:formula_crafting/infusion/i_recipes/warp_gate_upgrade
# Activate Warp Gate - Check WARP GATE for Lodestone Compass
execute positioned ~-5 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-5 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run execute at @s run function atrium:formula_crafting/infusion/additions/warp_gate/dimension_check
#