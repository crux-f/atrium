# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check CENTER SOUTH for Infusion Catalyst (Reverberating)
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_catalyst_reverberating:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_catalyst_reverberating:1b}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Rotten Flesh
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rotten_flesh",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rotten_flesh",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Rotten Flesh
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rotten_flesh",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rotten_flesh",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check for a Wolf within 10 blocks that isn't enchanted and tag it if it exists
execute as @e[type=minecraft:wolf,distance=..10,tag=!atrium_enchanted_wolf,limit=1,sort=nearest] run tag @s add atrium_enchantable_wolf
execute at @e[tag=atrium_enchantable_wolf,distance=..10] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute if entity @e[tag=atrium_enchantable_wolf,distance=..10] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=4..}] at @s run tag @e[tag=atrium_enchantable_wolf,distance=..10] add atrium_enchanted_wolf
execute if entity @s[scores={valid_ingredients=4..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
# Enchant the wolf if it ends up with both tags
execute as @e[tag=atrium_enchantable_wolf,tag=atrium_enchanted_wolf,distance=..10] run data merge entity @s {Tags:["atrium_enchanted_wolf","atrium_hunting_enchanted","atrium_special","atrium_particle","atrium_dust_sometimes"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:looting",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
scoreboard players set @s valid_ingredients 0
