# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check WEST for Cinder Solution
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_cinder_solution:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_cinder_solution:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Fire Charge
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fire_charge"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:fire_charge"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Magma Block
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_block"}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=3..}] at @s run summon item ~ ~1 ~ {Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:honey_bottle",components:{"minecraft:item_name":'{"text":"Essence of Ember"}',"minecraft:lore":['{"text":"The amber liquid simmers"}','{"text":"within. It is perpetually"}','{"text":"burning."}'],"minecraft:fire_resistant":{},"minecraft:custom_data":{atrium_essence_of_ember:1b},"minecraft:food":{nutrition:0,saturation:0,is_meat:false,eat_seconds:1.6,effects:[{effect:{id:"minecraft:wither",amplifier:0,duration:30000,show_particles:1b,show_icon:1b},probability:1}]}}}}
execute if entity @s[scores={valid_ingredients=3..}] at @s run function atrium:formula_crafting/alchemy/alchemy_reset
scoreboard players set @s valid_ingredients 0
