# Summon the salvaged pieces of the item.
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",count:8}}
#
# Particles!
execute at @s run particle item{item:"minecraft:golden_chestplate"} ~ ~ ~ 0 0 0 0.01 3 normal
# SFX!
execute at @s run playsound minecraft:item.shield.break neutral @a[distance=..5] ~ ~ ~ 0.65 1.5 0.1