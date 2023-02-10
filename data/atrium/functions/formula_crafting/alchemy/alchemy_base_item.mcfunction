# Reset score
scoreboard players set @s valid_ingredients 0
#
# Crafting Components
#
# Start Cinder Solution - Check NORTH for Magma Cream
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_cream",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_cream",Count:1b}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/cinder_solution
#
# Start Peculiar Prism - Check NORTH for Nether Quartz
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz",Count:1b}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/peculiar_prism
#
# Tier 3 Potions
#
# Start Potion of Swiftness (17:00) - Check SOUTH for Potion of Swiftness (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_swiftness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_swiftness"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_swiftness
#
# Start Potion of Swiftness III (0:45) - Check SOUTH for Potion of Swiftness II (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_swiftness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_swiftness"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_swiftness
#
# Start Potion of Strength (17:00) - Check SOUTH for Potion of Strength (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_strength"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_strength"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_strength
#
# Start Potion of Strength III (0:45) - Check SOUTH for Potion of Strength II (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_strength"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_strength"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_strength
#
# Start Potion of Healing III - Check SOUTH for Potion of Healing II
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_healing
#
# Start Potion of Harming III - Check SOUTH for Potion of Harming II
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_harming
#
# Start Potion of Leaping (17:00) - Check SOUTH for Potion of Leaping (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_leaping"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_leaping"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_leaping
#
# Start Potion of Leaping III (0:45) - Check SOUTH for Potion of Leaping II (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_leaping"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_leaping"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_leaping
#
# Start Potion of Regeneration (4:00) - Check SOUTH for Potion of Regeneration (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_regeneration"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_regeneration"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_regeneration
#
# Start Potion of Regeneration III (0:22) - Check SOUTH for Potion of Regeneration II (0:45)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_regeneration"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_regeneration"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_regeneration
#
# Start Potion of Fire Resistance (17:00) - Check SOUTH for Potion of Fire Resistance (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_fire_resistance"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_fire_resistance"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_fire_resistance
#
# Start Potion of Water Breathing (17:00) - Check SOUTH for Potion of Water Breathing (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_water_breathing"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_water_breathing"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_water_breathing
#
# Start Potion of Invisibility (17:00) - Check SOUTH for Potion of Invisibility (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_invisibility"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_invisibility"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_invisibility
#
# Start Potion of Night Vision (17:00) - Check SOUTH for Potion of Night Vision (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_night_vision"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_night_vision"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_night_vision
#
# Start Potion of Poison (4:00) - Check SOUTH for Potion of Poison (1:30)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_poison"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_poison"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_poison
#
# Start Potion of Poison III (0:22) - Check SOUTH for Potion of Poison II (0:45)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/stronger_poison
#
# Start Slow Falling (8:00) - Check SOUTH for Potion of Slow Falling (8:00)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_slow_falling"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_slow_falling"}}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/longer_slow_falling
#
# Other Potions
#
# Start Bottle o' Enchanting - Check NORTH for Gold Nugget
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/experience_bottle
#
# Start Potion of Luck - Check NORTH for Fern
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fern",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fern",Count:1b}}] at @s run function atrium:formula_crafting/alchemy/a_recipes/potion_of_luck
#