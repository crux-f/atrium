# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check SOUTH for Enchantment Catalyst [Focusing]
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_catalyst_focusing:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_catalyst_focusing:1b}}}] run scoreboard players add @s valid_ingredients 1
#
# Check NORTH EAST for Bottle o' Enchanting
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
# Check NORTH WEST for Bottle o' Enchanting
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
# Check EAST for Emerald
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
# Check WEST for Emerald
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH EAST for Glowstone Dust
execute positioned ~2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
# Check SOUTH WEST for Glowstone Dust
execute positioned ~-2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=7..}] at @s run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:flint",Count:1b,tag:{display:{Name:'{"text":"Forgotten Runestone","italic":false}',Lore:['{"text":"Though you can no longer"}','{"text":"remember doing it, your hands"}','{"text":"still ache with the effort"}','{"text":"of carving the symbol"}','{"text":"into it."}']},CustomModelData:333173,atrium_forgotten_runestone:1b}}}
execute if entity @s[scores={valid_ingredients=7..}] at @s run function atrium:formula_crafting/enchantment/enchantment_reset
scoreboard players set @s valid_ingredients 0
