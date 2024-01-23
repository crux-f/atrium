# Summon the salvaged pieces of the item.
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:3b}}
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b}}
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:stick",Count:2b}}
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_scrap",Count:4b}}
#
# Particles!
execute at @s run particle item netherite_axe ~ ~ ~ 0 0 0 0.01 3 normal
# SFX!
execute at @s run playsound minecraft:item.shield.break neutral @a[distance=..5] ~ ~ ~ 0.65 1.5 0.1