# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. Regardless of success or failure, reset the crafting score afterwards.
# Note: ap_baseitem handles the first item - this script will handle any remaining item checks.
#
#
# Check NORTH EAST for Skeleton Trophy
execute positioned ~2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{skeleton_trophy:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{skeleton_trophy:1b}}}] run scoreboard players add @s codex 1
#
# Check EAST for Cooked Porkchop
execute positioned ~3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_porkchop",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_porkchop",Count:1b}}] run scoreboard players add @s codex 1
#
# Check SOUTH EAST for Zombie Trophy
execute positioned ~2 ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{zombie_trophy:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{zombie_trophy:1b}}}] run scoreboard players add @s codex 1
#
# Check SOUTH for Spellcraft Compound
execute positioned ~ ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run scoreboard players add @s codex 1
#
# Check SOUTH WEST for Phantom Trophy
execute positioned ~-2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{phantom_trophy:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{phantom_trophy:1b}}}] run scoreboard players add @s codex 1
#
# Check WEST for Bone
execute positioned ~-3 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bone",Count:1b}}] run scoreboard players add @s codex 1
#
# Check NORTH WEST for Spider Trophy
execute positioned ~-2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spider_trophy:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spider_trophy:1b}}}] run scoreboard players add @s codex 1
#
execute if entity @s[scores={codex=6..}] at @s run summon item ~ ~3 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Name:'{"text":"Traveler\'s Best Friend","color":"yellow","italic":true}',Lore:['{"text":"Ricochet Pelt","color":"gray","italic":false}','{"text":"Springy Paws","color":"#CEFFCC","italic":false}','{"text":"Tracking","color":"#92E094","italic":false}','{"text":"Hounding","color":"#FFBFBF","italic":false}','[{"text":"Component: ","color":"gray","italic":false},{"text":"Hunting Trophy","color":"yellow","italic":false}]','{"text":"Incomprehensible runes are"}','{"text":"seamlessly mixed with"}','{"text":"sketches of dogs."}','{"keybind":""}','{"text":"When in Off Hand:","color":"gray","italic":false}','{"text":"+1 Casting Power","color":"blue","italic":false}','{"text":"+7 Casting Time","color":"red","italic":false}']},HideFlags:32,spellbook:1b,travelers_best_friend:1b,StoredEnchantments:[{id:"minecraft:loyalty",lvl:1s}]}}}
execute if entity @s[scores={codex=6..}] at @s run function atrium:magic/runic_codex/rc_reset
scoreboard players set @s codex 0
