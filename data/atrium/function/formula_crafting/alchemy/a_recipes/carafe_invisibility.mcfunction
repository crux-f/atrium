# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check to make sure the Alchemy Cauldron has a Mixology Lab upgrade installed
execute if entity @s[tag=atrium_mixology_lab_installed] run scoreboard players add @s valid_ingredients 1
#
# Check NORTH for Alchemy Catalyst [Priming]
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_priming:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_priming:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Glass
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Crystal Bottle
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_crystal_bottle:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_crystal_bottle:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check Mixology Lab for
# 1 - Potion of Invisibility (3:00)
# 2 - Potion of Invisibility (3:00)
# 3 - Potion of Invisibility (3:00)
execute positioned ~-3 ~1 ~-2 if data block ~ ~ ~ {Items:[{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:invisibility"}}},{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:invisibility"}}},{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:invisibility"}}}]} run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=5..}] at @s run summon item ~ ~1 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":{"text":"Extremely Reportale Egg"},"minecraft:lore":[{"text":"Seems like something you"},{"text":"should report to the Admins."}],"minecraft:custom_model_data":{strings:["atrium_strange_egg"]},"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=5..}] at @s run item replace entity @n[type=item,tag=atrium_formula_product,distance=..7] container.0 with minecraft:potion[custom_data={atrium_carafe_potion:1b,atrium_potion_doses:3},custom_model_data={strings:["atrium_multiuse_potion_full"]},potion_contents={potion:"minecraft:invisibility"},use_remainder={id:"minecraft:potion",count:1,components:{"minecraft:custom_data":{atrium_carafe_potion:1b,atrium_potion_doses:2},"minecraft:custom_model_data":{strings:["atrium_multiuse_potion_half"]},"minecraft:potion_contents":{potion:"minecraft:invisibility"},"minecraft:use_remainder":{id:"minecraft:potion",count:1,components:{"minecraft:custom_data":{atrium_carafe_potion:1b,atrium_potion_doses:1},"minecraft:custom_model_data":{strings:["atrium_multiuse_potion_final"]},"minecraft:potion_contents":{potion:"minecraft:invisibility"},"minecraft:use_remainder":{id:"minecraft:glass_bottle",count:1,components:{"minecraft:custom_data":{atrium_crystal_bottle:1b},"minecraft:custom_model_data":{strings:["atrium_crystal_bottle"]},"minecraft:item_name":"Crystal Bottle"}},"minecraft:lore":[["",{"color":"gray","italic":false,"text":"Doses Left:"},{"color":"blue","italic":false,"text":" 1"}]]}},"minecraft:lore":[["",{"color":"gray","italic":false,"text":"Doses Left:"},{"color":"blue","italic":false,"text":" 2"}]]}},lore=[[{"color":"gray","italic":false,"text":"Doses Left:"},{"color":"blue","italic":false,"text":" 3"}]],custom_name={"italic":false,"text":"Carafe of Invisibility"}]
execute if entity @s[scores={valid_ingredients=5..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
execute if entity @s[scores={valid_ingredients=5..}] at @s run function atrium:formula_crafting/alchemy/lab_reset
# Give items back
execute if entity @s[scores={valid_ingredients=5..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.0,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:glass_bottle",count:3}}
scoreboard players set @s valid_ingredients 0