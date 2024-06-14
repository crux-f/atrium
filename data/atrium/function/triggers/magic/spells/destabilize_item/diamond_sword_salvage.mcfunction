# Summon the salvaged pieces of the item.
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",count:2}}
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:stick",count:1}}
#
# Particles!
execute at @s run particle item diamond_sword ~ ~ ~ 0 0 0 0.01 3 normal
# SFX!
execute at @s run playsound minecraft:item.shield.break neutral @a[distance=..5] ~ ~ ~ 0.65 1.5 0.1