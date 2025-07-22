# Reset score
scoreboard players set @s valid_ingredients 0
#
# Research Alchemy (Transform Alchemy Research items into Formulas) - Check NORTH for Alchemy Research
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{atrium_research_type:"alchemy"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{atrium_research_type:"alchemy"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/create_alchemy_formula
#
# Crafting Components
#
# Start Cinder Solution - Check NORTH for Magma Cream
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_cream"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_cream"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/cinder_solution
# Start Peculiar Prism - Check NORTH for Nether Quartz
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/peculiar_prism
# Start Essence of Anachronism - Check NORTH for Crying Obsidian
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crying_obsidian"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crying_obsidian"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/essence_of_anachronism
# Start Alchemy Catalyst [Priming] - Check NORTH for Block of Redstone
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/catalyst_priming
# Start Alchemy Catalyst [Galvanizing] - Check NORTH for Glowstone
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/catalyst_galvanizing
# Start Eternal Hourglass - Check NORTH for Sand
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sand"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sand"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/eternal_hourglass
# Start Everglacier - Check NORTH for Calm Crystal
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_calm_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_calm_crystal:1b}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/everglacier
# Start Cyclone Cube - Check NORTH for Glass
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/cyclone_cube
# Start Essence of Ember - Check NORTH for Red Sandstone
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:red_sandstone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:red_sandstone"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/essence_of_ember
# Start Crystal Bottle - Check SOUTH for Gleaming Crystal
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/crystal_bottle
#
# Tier 3 Potions
#
# Start Potion of Swiftness (17:00) - Check SOUTH for Potion of Swiftness (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_swiftness"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_swiftness"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_swiftness
#
# Start Potion of Swiftness III (0:45) - Check SOUTH for Potion of Swiftness II (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_swiftness
#
# Start Potion of Strength (17:00) - Check SOUTH for Potion of Strength (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_strength"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_strength"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_strength
#
# Start Potion of Strength III (0:45) - Check SOUTH for Potion of Strength II (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_strength"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_strength"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_strength
#
# Start Potion of Healing III - Check SOUTH for Potion of Healing II
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_healing
#
# Start Potion of Harming III - Check SOUTH for Potion of Harming II
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_harming
#
# Start Potion of Leaping (17:00) - Check SOUTH for Potion of Leaping (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_leaping"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_leaping"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_leaping
#
# Start Potion of Leaping III (0:45) - Check SOUTH for Potion of Leaping II (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_leaping"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_leaping"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_leaping
#
# Start Potion of Regeneration (4:00) - Check SOUTH for Potion of Regeneration (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_regeneration"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_regeneration"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_regeneration
#
# Start Potion of Regeneration III (0:22) - Check SOUTH for Potion of Regeneration II (0:45)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_regeneration"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_regeneration"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_regeneration
#
# Start Potion of Fire Resistance (17:00) - Check SOUTH for Potion of Fire Resistance (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_fire_resistance
#
# Start Potion of Water Breathing (17:00) - Check SOUTH for Potion of Water Breathing (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_water_breathing"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_water_breathing"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_water_breathing
#
# Start Potion of Invisibility (17:00) - Check SOUTH for Potion of Invisibility (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_invisibility
#
# Start Potion of Night Vision (17:00) - Check SOUTH for Potion of Night Vision (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_night_vision"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_night_vision"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_night_vision
#
# Start Potion of Poison (4:00) - Check SOUTH for Potion of Poison (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_poison"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_poison"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_poison
#
# Start Potion of Poison III (0:22) - Check SOUTH for Potion of Poison II (0:45)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_poison
#
# Start Slow Falling (8:00) - Check SOUTH for Potion of Slow Falling (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_slow_falling"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:long_slow_falling"}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_slow_falling
#
# Potion Carafes (multi-use potions)
#
# Start Carafe of Swiftness (3:00) - Check EAST for Arrow 
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_swiftness
#
# Start Carafe of Swiftness (8:00) - Check EAST for Arrow
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_swiftness
#
# Start Carafe of Swiftness II (1:30) - Check EAST for Arrow
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_strong_swiftness
#
# Start Carafe of Strength (3:00) - Check EAST for Blaze Powder
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_strength
#
# Start Carafe of Strength (8:00) - Check EAST for Blaze Powder
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_strength
#
# Start Carafe of Strength II (1:30) - Check EAST for Blaze Powder
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blaze_powder"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_strong_strength
#
# Start Carafe of Healing I - Check EAST for Honey Bottle
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:honey_bottle"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:honey_bottle"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_healing
#
# Start Carafe of Healing II - Check EAST for Honey Bottle
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:honey_bottle"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:honey_bottle"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_strong_healing
#
# Start Carafe of Harming I - Check EAST for 
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bone"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_harming
#
# Start Carafe of Harming II - Check EAST for 
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bone"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_strong_harming
#
# Start Carafe of Leaping (3:00) - Check EAST for Slime Ball
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:slime_ball"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:slime_ball"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_leaping
#
# Start Carafe of Leaping (8:00) - Check EAST for Slime Ball
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:slime_ball"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:slime_ball"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_leaping
#
# Start Carafe of Leaping II (1:30) - Check EAST for Slime Ball
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:slime_ball"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:slime_ball"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_strong_leaping
#
# Start Carafe of Regeneration (0:45) - Check EAST for Glow Berries
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_regeneration
#
# Start Carafe of Regeneration (1:30) - Check EAST for Glow Berries
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_regeneration
#
# Start Carafe of Regeneration II (0:22) - Check EAST for Glow Berries
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_strong_regeneration
#
# Start Carafe of Fire Resistance (3:00) - Check EAST for Snowball
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:snowball"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:snowball"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_fire_resistance
#
# Start Carafe of Fire Resistance (8:00) - Check EAST for Snowball 
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:snowball"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:snowball"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_fire_resistance
#
# Start Carafe of Water Breathing (3:00) - Check EAST for Tropical Fish
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tropical_fish"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tropical_fish"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_water_breathing
#
# Start Carafe of Water Breathing (8:00) - Check EAST for Tropical Fish
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tropical_fish"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tropical_fish"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_water_breathing
#
# Start Carafe of Invisibility (3:00) - Check EAST for Glass
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_invisibility
#
# Start Carafe of Invisibility (8:00) - Check EAST for Glass
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_invisibility
#
# Start Carafe of Night Vision (3:00) - Check EAST for Oxeye Daisy
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:oxeye_daisy"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:oxeye_daisy"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_night_vision
#
# Start Carafe of Night Vision (8:00) - Check EAST for Oxeye Daisy
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:oxeye_daisy"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:oxeye_daisy"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_night_vision
#
# Start Carafe of Poison (0:45) - Check EAST for Pufferfish
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:pufferfish"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:pufferfish"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_poison
#
# Start Carafe of Poison (1:30) - Check EAST for Pufferfish
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:pufferfish"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:pufferfish"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_poison
#
# Start Carafe of Poison II (0:21) - Check EAST for Pufferfish
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:pufferfish"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:pufferfish"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_strong_poison
#
# Start Carafe of Slow Falling (1:30) - Check EAST for Feather
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:feather"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:feather"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_slow_falling
#
# Start Carafe of Slow Falling (4:00) - Check EAST for Feather
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:feather"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:feather"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/carafe_long_slow_falling
#
# Uncraftable Potions
#
# Start Bottle o' Enchanting - Check NORTH for Gold Nugget
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/experience_bottle
#
# Start Potion of Luck - Check NORTH for Fern
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fern"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fern"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/potion_of_luck
#
# Food
#
# Start Butter - Check NORTH for Stick
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stick"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/butter
# Start Pasta - Check NORTH for Egg
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:egg"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:egg"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/pasta
# Start Wheat Beer - Check NORTH for Glow Berries
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_berries"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/wheat_beer
# Start Birch Beer - Check NORTH for Birch Wood
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:birch_wood"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:birch_wood"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/birch_beer
# Start Root Beer - Check NORTH for Hanging Roots
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:hanging_roots"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:hanging_roots"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/root_beer
# Start Sweet Berry Wine - Check NORTH for Sweet Berries
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sweet_berries"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sweet_berries"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/sweet_berry_wine
# Start Fruit Salad - Check NORTH for Sugar
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/fruit_salad
# Start Yellow Cheese - Check NORTH for Yellow Wool
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:yellow_wool"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:yellow_wool"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/yellow_cheese
# Start Blue Cheese - Check NORTH for Blue Wool
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_wool"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_wool"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/blue_cheese
# Start Red Cheese - Check NORTH for Red Wool
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:red_wool"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:red_wool"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/red_cheese
# Start Mayo Bottle - Check NORTH for Sugar
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/mayo_bottle
# Start Shipwreck Sub - Check EAST for Dried Kelp
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dried_kelp"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dried_kelp"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/shipwreck_sub
# Start Dark Sauce - Check WEST for Ink Sac
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ink_sac"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ink_sac"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/dark_sauce
# Start Light Sauce - Check NORTH for Glowstone Dust
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/light_sauce
# Start Burger - Check EAST for Yellow Cheese
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_yellow_cheese:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_yellow_cheese:1b}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/burger
# Start Crimson Burger - Check EAST for Red Cheese
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_red_cheese:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_red_cheese:1b}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/crimson_burger
# Start Warped Burger - Check EAST for Blue Cheese
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blue_cheese:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blue_cheese:1b}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/warped_burger
# Start Mashed Potatoes - Check NORTH for Potato
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potato"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potato"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/mashed_potatoes
# Start Cactus Juice - Check WEST for Sugar
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sugar"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/cactus_juice
# Start Taffy - Check NORTH for Honey Bottle
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:honey_bottle"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:honey_bottle"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/taffy
# Start Crescent Cookie - Check NORTH for Cookie
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cookie"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cookie"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/crescent_cookie
# Start Chow - Check NORTH for Raw Mutton
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:mutton"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:mutton"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/chow
# Start Drumstick - Check NORTH for Raw Chicken
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chicken"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chicken"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/drumstick
# Start Inspirational Cupcake - Check NORTH for Comet Berries
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_comet_berries:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_comet_berries:1b}}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/inspirational_cupcake
#
# Upgrades
#
# Start Cooking Station - Check NORTH for Crafting Table
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crafting_table"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:crafting_table"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/cooking_station_upgrade
#
# Start Mixology Lab - Check NORTH for Brewing Stand
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:brewing_stand"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:brewing_stand"}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/mixology_lab_upgrade