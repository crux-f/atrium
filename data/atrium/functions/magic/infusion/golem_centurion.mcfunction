# Check NORTH EAST for Pure Redstone
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{pure_redstone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{pure_redstone:1b}}}] run scoreboard players add @s infusion 1
#
# Check EAST for Brightsteel Ingot
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH EAST for Brightsteel Ingot
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH for Brightsteel Ingot
execute positioned ~ ~2 ~4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run scoreboard players add @s infusion 1
#
# Check SOUTH WEST for Brightsteel Ingot
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run scoreboard players add @s infusion 1
#
# Check WEST for Brightsteel Ingot
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{brightsteel_ingot:1b}}}] run scoreboard players add @s infusion 1
#
# Check NORTH WEST for Pure Redstone
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{pure_redstone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{pure_redstone:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER NORTH for Jack o' Lantern
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:jack_o_lantern",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:jack_o_lantern",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Iron Block
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER SOUTH for Block of Iron
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Iron Block
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}] run scoreboard players add @s infusion 1
#
execute if entity @s[scores={infusion=11..}] at @s run summon iron_golem ~ ~3 ~ {DeathLootTable:"atrium:golem_centurion",PersistenceRequired:1b,Health:250f,PlayerCreated:1b,Tags:["golem_centurion"],CustomName:'{"text":"Golem Centurion","color":"dark_green","italic":false}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Centurion Slam"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ActiveEffects:[{Id:10b,Amplifier:1b,Duration:1728000,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:250}]}
execute if entity @s[scores={infusion=11..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
