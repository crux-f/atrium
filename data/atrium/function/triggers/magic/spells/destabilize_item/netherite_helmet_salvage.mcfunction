# Summon the salvaged pieces of the item.
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",count:5}}
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",count:1}}
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_scrap",count:4}}
#
# Particles!
execute at @s run particle item{item:"minecraft:netherite_helmet"} ~ ~ ~ 0 0 0 0.01 3 normal
# SFX!
execute at @s run playsound minecraft:item.shield.break neutral @a[distance=..5] ~ ~ ~ 0.65 1.5 0.1