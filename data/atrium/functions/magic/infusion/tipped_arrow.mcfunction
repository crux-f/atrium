# Check CENTER SOUTH for Transmutation Powder
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{transmutation_powder:1b}}}] run scoreboard players add @s infusion 1
# Check NORTH WEST for Arrow
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow",Count:1b}}] run scoreboard players add @s infusion 1
# Check NORTH EAST for Arrow
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow",Count:1b}}] run scoreboard players add @s infusion 1
# Check SOUTH EAST for Arrow
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow",Count:1b}}] run scoreboard players add @s infusion 1
#
# Arrow of Night Vision - Check CENTER NORTH for Potion of Night Vision
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:night_vision"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:night_vision"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:night_vision"}}}
#
# Arrow of Night Vision (1:00) - Check CENTER NORTH for Potion of Night Vision (8:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_night_vision"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_night_vision"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_night_vision"}}}
#
# Arrow of Invisibility - Check CENTER NORTH for Potion of Invisibility
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:invisibility"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:invisibility"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:invisibility"}}}
#
# Arrow of Invisibility (1:00) - Check CENTER NORTH for Potion of Invisibility (8:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_invisibility"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:invisibility"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_invisibility"}}}
#
# Arrow of Leaping - Check CENTER NORTH for Potion of Leaping
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:leaping"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:leaping"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:leaping"}}}
#
# Arrow of Leaping II - Check CENTER NORTH for Potion of Leaping II
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_leaping"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_leaping"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strong_leaping"}}}
#
# Arrow of Leaping (1:00) - Check CENTER NORTH for Potion of Leaping (8:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_leaping"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_leaping"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_leaping"}}}
#
# Arrow of Fire Resistance - Check CENTER NORTH for Potion of Fire Resistance
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:fire_resistance"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:fire_resistance"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:fire_resistance"}}}
#
# Arrow of Fire Resistance (1:00) - Check CENTER NORTH for Potion of Fire Resistance (8:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_fire_resistance"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_fire_resistance"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_fire_resistance"}}}
#
# Arrow of Swiftness - Check CENTER NORTH for Potion of Swiftness
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:swiftness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:swiftness"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:swiftness"}}}
#
# Arrow of Swiftness II - Check CENTER NORTH for Potion of Swiftness II
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_swiftness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_swiftness"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strong_swiftness"}}}
#
# Arrow of Swiftness (1:00) - Check CENTER NORTH for Potion of Swiftness (8:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_swiftness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_swiftness"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_swiftness"}}}
#
# Arrow of Slowness - Check CENTER NORTH for Potion of Slowness
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:slowness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:slowness"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:slowness"}}}
#
# Arrow of Slowness II - Check CENTER NORTH for Potion of Slowness II
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_slowness"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strong_slowness"}}}
#
# Arrow of Slowness (1:00) - Check CENTER NORTH for Potion of Slowness (8:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_slowness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_slowness"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_slowness"}}}
#
# Arrow of the Turtle Master - Check CENTER NORTH for Potion of the Turtle Master
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:turtle_master"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:turtle_master"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:turtle_master"}}}
#
# Arrow of the Turtle Master II - Check CENTER NORTH for Potion of the Turtle Master II
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_turtle_master"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_turtle_master"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strong_turtle_master"}}}
#
# Arrow of the Turtle Master (0:05) - Check CENTER NORTH for Potion of the Turtle Master (0:40)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_turtle_master"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_turtle_master"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_turtle_master"}}}
#
# Arrow of Water Breathing - Check CENTER NORTH for Potion of Water Breathing
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water_breathing"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water_breathing"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:water_breathing"}}}
#
# Arrow of the Water Breathing (8:00) - Check CENTER NORTH for Potion of Water Breathing (8:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_water_breathing"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_water_breathing"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_water_breathing"}}}
#
# Arrow of Healing - Check CENTER NORTH for Potion of Healing
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:healing"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:healing"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:healing"}}}
#
# Arrow of Healing II - Check CENTER NORTH for Potion of Healing II
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_healing"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strong_healing"}}}
#
# Arrow of Harming - Check CENTER NORTH for Potion of Harming
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:harming"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:harming"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:harming"}}}
#
# Arrow of Harming II - Check CENTER NORTH for Potion of Harming II
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strong_harming"}}}
#
# Arrow of Poison - Check CENTER NORTH for Potion of Poison
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:poison"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:poison"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:poison"}}}
#
# Arrow of Poison II - Check CENTER NORTH for Potion of Poison II
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strong_poison"}}}
#
# Arrow of Poison (0:11) - Check CENTER NORTH for Potion of Poison (1:30)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_poison"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_poison"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_poison"}}}
#
# Arrow of Regeneration - Check CENTER NORTH for Potion of Regeneration
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:regeneration"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:regeneration"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:regeneration"}}}
#
# Arrow of Regeneration II - Check CENTER NORTH for Potion of Regeneration II
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_regeneration"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_regeneration"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strong_regeneration"}}}
#
# Arrow of Regeneration (0:11) - Check CENTER NORTH for Potion of Regeneration (1:30)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_regeneration"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_regeneration"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_regeneration"}}}
#
# Arrow of Strength - Check CENTER NORTH for Potion of Strength
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strength"}}}
#
# Arrow of Strength II - Check CENTER NORTH for Potion of Strength II
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_strength"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strong_strength"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:strong_strength"}}}
#
# Arrow of Strength (1:00) - Check CENTER NORTH for Potion of Strength (8:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_strength"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_strength"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_strength"}}}
#
# Arrow of Weakness - Check CENTER NORTH for Potion of Weakness
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:weakness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:weakness"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:weakness"}}}
#
# Arrow of Weakness (1:00) - Check CENTER NORTH for Potion of Weakness (4:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_weakness"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_weakness"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_weakness"}}}
#
# Arrow of Luck - Check CENTER NORTH for Potion of Luck
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:luck"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:luck"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:luck"}}}
#
# Arrow of Slow Falling - Check CENTER NORTH for Potion of Slow Falling
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:slow_falling"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:slow_falling"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:slow_falling"}}}
#
# Arrow of Slow Falling (1:00) - Check CENTER NORTH for Potion of Slow Falling (8:00)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_slow_falling"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:long_slow_falling"}}}] run execute at @e[tag=infusion,distance=..10,scores={infusion=4..}] run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:tipped_arrow",Count:4b,tag:{Potion:"minecraft:long_slow_falling"}}}
#
execute if entity @s[scores={infusion=4..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
