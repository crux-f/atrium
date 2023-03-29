# executes from stoke_furnace on a valid target block
#
# Furnace
execute if block ~ ~ ~ minecraft:furnace run data modify block ~ ~ ~ BurnTime set value 20000
# Blast Furnace + Smoker burn at half
execute if block ~ ~ ~ minecraft:blast_furnace run data modify block ~ ~ ~ BurnTime set value 10000
execute if block ~ ~ ~ minecraft:smoker run data modify block ~ ~ ~ BurnTime set value 10000
#
# SFX
playsound minecraft:block.fire.ambient player @a[distance=..5] ~ ~ ~ 1 1.5 0.1
#
# Particles
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.01 25
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.25 0.25 0.25 0.01 3