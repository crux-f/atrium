# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH WEST for Redstone
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH EAST for Redstone
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER NORTH for Eager Crystal
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_eager_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{tag:{atrium_eager_crystal:1b}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Iron Block
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Iron Block
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Iron Block
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Glow Lichen
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_lichen",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_lichen",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Glow Lichen
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_lichen",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glow_lichen",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH WEST for Gold Nugget
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Gold Nugget
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Iron Block
execute positioned ~ ~ ~4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=11..}] at @s run summon iron_golem ~ ~ ~ {DeathLootTable:"atrium:entities/centurion_golem",PersistenceRequired:1b,Health:200f,PlayerCreated:1b,Tags:["atrium_centurion_golem"],CustomName:'{"text":"Centurion Golem","color":"yellow"}',HandItems:[{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'{"text":"Centurion Golem Arm","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.35,Operation:1,UUID:[I;205994286,1894206158,-1516203249,-1003431956],Slot:"mainhand"}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{display:{Name:'{"text":"Centurion Golem Enchantment","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{display:{Name:'{"text":"Centurion Golem Enchantment","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{display:{Name:'{"text":"Centurion Golem Enchantment","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}]}},{id:"minecraft:iron_helmet",Count:1b,tag:{display:{Name:'{"text":"Centurion Golem Enchantment","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s}]}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:200},{Name:"generic.knockback_resistance",Base:0.5}]}
execute if entity @s[scores={valid_ingredients=11..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
scoreboard players set @s valid_ingredients 0
