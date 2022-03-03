# ANCHOR
execute unless entity @e[distance=..3,tag=empoweredcauldron] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["empoweredcauldron"]}
#
# UPGRADE A VANILLA POTION - CHECK SOUTH FOR HIGH LEVEL VANILLA POTION
#
# Start Potion of Healing III
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/healing_3
#
# Start Potion of Fire Resistance (13:00)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_fire_resistance"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_fire_resistance"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/fire_resistance_3
#
# Start Potion of Night Vision (13:00)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_night_vision"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_night_vision"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/night_vision_3
#
# Start Potion of Invisibility (13:00)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_invisibility"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_invisibility"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/invisibility_3
#
# Start Potion of Leaping III
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_leaping"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_leaping"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/leaping_3_g
#
# Start Potion of Leaping II (3:00)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_leaping"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_leaping"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/leaping_3_r
#
# Start Potion of Seed III
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_swiftness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_swiftness"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/speed_3_g
#
# Start Potion of Speed II (3:00)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_swiftness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_swiftness"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/speed_3_r
#
# Start Potion of Regeneration III
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_regeneration"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_regeneration"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/regeneration_3_g
#
# Start Potion of Regeneration II (0:45)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_regeneration"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_regeneration"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/regeneration_3_r
#
# Start Potion of Strength III
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_strength"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_strength"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/strength_3_g
#
# Start Potion of Strength II (3:00)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_strength"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_strength"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/strength_3_r
#
# Start Potion of Water Breathing (13:00)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_water_breathing"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_water_breathing"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/water_breathing_3
#
# Start Potion of Harming III
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/harming_3
#
# Start Potion of Poison III
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/poison_3_g
#
# Start Potion of Poison II (0:45)
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/poison_3_r
#
# INGREDIENTS
#
# Start Potion Catalyst [Galvanizing] - Check NORTH for Glowstone Block
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/catalyst_galvanizing
#
# Start Potion Catalyst [Priming] - Check SOUTH for Redstone Block
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/catalyst_priming
#
# Start Transmutation Powder - Check NORTH for Gunpowder
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/transmutation_powder
#
# Start Essence of Amber - check NORTH for Red Sandstone
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:red_sandstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:red_sandstone",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/essence_of_amber
#
# Start Submerged Gemstone - Check SOUTH for Lapis Lazuli
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/submerged_gemstone
#
# Start Essence of Anachronism - check WEST for Smooth Stone
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/essence_of_anachronism
#
# Start Stardust - Check NORTH for Comet Berries
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{tag:{comet_berries:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{tag:{comet_berries:1b}}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/stardust
#
# Potion Mixtures
#
# Start Philter of Velocity (0:45) - check bottom slot for ender pearl
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/philter_velocity_strong
#
# Start Philter of Velocity (3:00) - check bottom slot for ender pearl
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/philter_velocity_long
#
# Start Philter of Suffering (0:45) - check bottom slot for wooden sword
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/philter_suffering_long
#
# Start Philter of Suffering (0:22) - check bottom slot for wooden sword
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/philter_suffering_strong
#
# Start Philter of Restoration (0:45) - check bottom slot for honey bottle
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:honey_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:honey_bottle",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/philter_restoration_long
#
# Start Philter of Restoration (0:22) - check bottom slot for honey bottle
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:honey_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:honey_bottle",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/philter_restoration_strong
#
# Start Philter of Equilibrium - check bottom slot for clay ball
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:clay_ball",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/philter_equilibrium
#
# Start Philter of Light-Eating - check bottom slot for charcoal
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:charcoal",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:charcoal",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/philter_lighteating
#
# Custom Potions
#
# Start Potion of Luck (5:00) - Check WEST for Rabbit's Foot
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:rabbit_foot",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1,nbt={Item:{id:"minecraft:rabbit_foot",Count:1b}}] run execute as @e[tag=empoweredcauldron,distance=..10] at @s run function atrium:magic/advancedpotions/luck
