# executes from stoke_furnace on a valid target block
#
# Furnace
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} if block ~ ~ ~ minecraft:furnace run data modify block ~ ~ ~ BurnTime set value 20000
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} if block ~ ~ ~ minecraft:furnace run data modify block ~ ~ ~ BurnTime set value 40000
# Blast Furnace + Smoker burn at half
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} if block ~ ~ ~ minecraft:blast_furnace run data modify block ~ ~ ~ BurnTime set value 10000
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} if block ~ ~ ~ minecraft:smoker run data modify block ~ ~ ~ BurnTime set value 10000
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} if block ~ ~ ~ minecraft:blast_furnace run data modify block ~ ~ ~ BurnTime set value 20000
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} if block ~ ~ ~ minecraft:smoker run data modify block ~ ~ ~ BurnTime set value 20000
#
# SFX
playsound minecraft:block.fire.ambient player @a[distance=..5] ~ ~ ~ 1 1.5 0.1
#
# Particles
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.01 25
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.25 0.25 0.25 0.01 3