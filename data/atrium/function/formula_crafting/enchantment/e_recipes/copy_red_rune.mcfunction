# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check to make sure the Runic Codex has a Occult Altar upgrade installed
execute if data entity @s data.occult_altar_installed run scoreboard players add @s valid_ingredients 1
#
# Check NORTH EAST for Pure Redstone
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_pure_redstone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_pure_redstone:1b}}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH WEST for Pure Redstone
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_pure_redstone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_pure_redstone:1b}}}] run scoreboard players add @s valid_ingredients 1
#
# RUNE CHECK
#
execute if data block ~ ~ ~-5 {Items:[{Slot:4b,tag:{atrium_rune:"blank"}}]} run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=4..}] run summon item ~ ~0.5 ~ {NoGravity:1b,Glowing:1b,PickupDelay:2,Tags:["atrium_codex_product_placeholder"],Item:{id:"minecraft:egg",Count:1b,tag:{display:{Name:'{"text":"Extremely Reportable Egg","italic":false}',Lore:['{"text":"(report this to crux_f)"}']}}}}
execute if entity @s[scores={valid_ingredients=4..}] positioned ~ ~ ~-3 as @e[type=minecraft:glow_item_frame,distance=..1.5] run data modify entity @e[tag=atrium_codex_product_placeholder,sort=nearest,limit=1] Item set from entity @s Item
execute if entity @s[scores={valid_ingredients=4..}] as @e[limit=1,sort=nearest,tag=atrium_codex_product_placeholder] run data merge entity @s {Item:{Count:2b}}
execute if entity @s[scores={valid_ingredients=4..}] run function atrium:formula_crafting/enchantment/enchantment_reset
execute if entity @s[scores={valid_ingredients=4..}] run function atrium:formula_crafting/enchantment/altar_reset
# tellraw @a [{"text":"Validation reached: [","color":"gray"},{"score":{"name":"@s","objective":"valid_ingredients"},"bold":true,"color":"gray"},{"text":"]","color":"gray"}]
scoreboard players set @s valid_ingredients 0