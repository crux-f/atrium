# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: alchemy_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH for enchantment target (Any Axe)
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:wooden_axe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:wooden_axe",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# 
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone_axe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone_axe",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# 
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_axe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_axe",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# 
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:golden_axe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:golden_axe",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# 
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_axe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_axe",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# 
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:netherite_axe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:netherite_axe",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check to make sure the enchantment target isn't already enchanted with a vanilla enchantment
execute positioned ~ ~ ~-3 unless data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.tag.Enchantments[0] run scoreboard players add @s valid_ingredients 1
# Check to make sure the enchantment target isn't already enchanted with a custom enchantment
execute positioned ~ ~ ~-3 unless data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.tag.atrium_custom_enchantment run scoreboard players add @s valid_ingredients 1
# Check to make sure the Runic Codex has a Occult Altar upgrade installed
execute if data entity @s data.occult_altar_installed run scoreboard players add @s valid_ingredients 1
#
# Check NORTH EAST for Steak
execute positioned ~2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_beef",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_beef",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Enchantment Catalyst [Transforming]
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_catalyst_transforming:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_catalyst_transforming:1b}}}] run scoreboard players add @s valid_ingredients 1
#
# Check for a nearby player (within 10 blocks) who has at least 35 levels of XP
execute if entity @a[distance=..10,gamemode=!spectator,level=35..] run scoreboard players add @s valid_ingredients 1
#
# RUNE CHECK
#
execute if data block ~-1 ~ ~-5 {Items:[{Slot:3b,tag:{atrium_rune:"f"}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~-1 ~ ~-5 {Items:[{Slot:4b,tag:{atrium_rune:"e"}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~-1 ~ ~-5 {Items:[{Slot:5b,tag:{atrium_rune:"a"}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:3b,tag:{atrium_rune:"s"}}]} run scoreboard players add @s valid_ingredients 1
execute if data block ~ ~ ~-5 {Items:[{Slot:4b,tag:{atrium_rune:"t"}}]} run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=12..}] run summon item ~ ~0.5 ~ {NoGravity:1b,Glowing:1b,PickupDelay:2,Tags:["atrium_codex_product_placeholder"],Item:{id:"minecraft:egg",Count:1b,tag:{display:{Name:'{"text":"Extremely Reportable Egg","italic":false}',Lore:['{"text":"(report this to crux_f)"}']}}}}
execute if entity @s[scores={valid_ingredients=12..}] positioned ~ ~ ~-3 as @e[type=minecraft:glow_item_frame,distance=..1.5] run data modify entity @e[tag=atrium_codex_product_placeholder,sort=nearest,limit=1] Item set from entity @s Item
execute if entity @s[scores={valid_ingredients=12..}] as @e[limit=1,sort=nearest,tag=atrium_codex_product_placeholder] run data merge entity @s {Item:{tag:{Enchantments:[{}],RepairCost:3,atrium_custom_enchantment:1b,atrium_feast_enchanted:1b}}}
execute if entity @s[scores={valid_ingredients=12..}] as @e[limit=1,sort=nearest,tag=atrium_codex_product_placeholder] run data modify entity @s Item.tag.display.Lore prepend value '{"text":"FEAST","italic":false,"color":"gray","font":"illageralt"}'
execute if entity @s[scores={valid_ingredients=12..}] run function atrium:formula_crafting/enchantment/enchantment_reset
execute if entity @s[scores={valid_ingredients=12..}] run function atrium:formula_crafting/enchantment/altar_reset
execute if entity @s[scores={valid_ingredients=12..}] positioned ~ ~ ~-7 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/enchanter_ii
# Take 1 level of XP from a random nearby player (within 10 blocks) who has at least 15 levels of XP
execute if entity @s[scores={valid_ingredients=12..}] as @r[distance=..10,level=35..,gamemode=!spectator] run xp add @s -3 levels
# tellraw @a [{"text":"Validation reached: [","color":"gray"},{"score":{"name":"@s","objective":"valid_ingredients"},"bold":true,"color":"gray"},{"text":"]","color":"gray"}]
