# Any target gets particles
execute at @s positioned ^ ^ ^3 at @e[limit=1,type=#atrium:fuse_entities,distance=..3,sort=nearest] run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 25
execute at @s positioned ^ ^ ^3 at @e[limit=1,type=#atrium:fuse_entities,distance=..3,sort=nearest] run particle minecraft:sweep_attack ~ ~1.25 ~ 0.1 0.1 0.1 0.5 1
# Creepers get fuse time doubled
execute at @s positioned ^ ^ ^3 as @e[limit=1,type=minecraft:creeper,distance=..3,sort=nearest] run data modify entity @s Fuse set value 50
# TNT is defused
execute at @s positioned ^ ^ ^3 as @e[limit=1,type=minecraft:tnt,distance=..3,sort=nearest] if entity @s at @s run summon item ~ ~ ~ {Item:{id:"minecraft:tnt",Count:1b}}
execute at @s positioned ^ ^ ^3 as @e[limit=1,type=minecraft:tnt,distance=..3,sort=nearest] if entity @s run kill @s
# TNT Minecarts are defused
execute at @s positioned ^ ^ ^3 as @e[limit=1,type=minecraft:tnt_minecart,distance=..3,sort=nearest] if entity @s at @s run summon item ~ ~ ~ {Item:{id:"minecraft:tnt_minecart",Count:1b}}
execute at @s positioned ^ ^ ^3 as @e[limit=1,type=minecraft:tnt_minecart,distance=..3,sort=nearest] if entity @s run kill @s
#
advancement revoke @s only atrium:triggers/runic_enchantments/fuse_cutter
