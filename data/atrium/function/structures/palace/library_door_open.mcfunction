# Run from library_door_check
#
# Add 1 to the 'charge' score of each Palace Library Door Block marker with a value of 2 every tick.
scoreboard players add @e[type=minecraft:marker,nbt={data:{palace_library_door:2}}] charge 1
#
# Intro SFX
execute at @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:1}},scores={charge=10},limit=1] run playsound minecraft:item.trident.thunder block @a[distance=..30] ~ ~ ~ 1 0.15 0.1
#
# Layer 1 
#
# SFX
execute at @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:1}},scores={charge=100..}] run playsound minecraft:block.glass.step block @a[distance=..15] ~ ~ ~ 1 1 0.1
# Block removal
execute at @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:1}},scores={charge=100..}] run setblock ~ ~ ~ minecraft:water
# Entity removal
execute as @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:1}}] at @s if block ~ ~ ~ minecraft:water run kill @s
#
# Layer 2 
#
# SFX
execute at @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:2}},scores={charge=115..}] run playsound minecraft:block.glass.step block @a[distance=..15] ~ ~ ~ 1 1 0.1
# Block removal
execute at @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:2}},scores={charge=115..}] run setblock ~ ~ ~ minecraft:water
# Entity removal
execute as @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:2}}] at @s if block ~ ~ ~ minecraft:water run kill @s
#
# Layer 3
#
# SFX
execute at @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:3}},scores={charge=130..}] run playsound minecraft:block.glass.step block @a[distance=..15] ~ ~ ~ 1 1 0.1
# Block removal
execute at @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:3}},scores={charge=130..}] run setblock ~ ~ ~ minecraft:water
# Entity removal
execute as @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:3}}] at @s if block ~ ~ ~ minecraft:water run kill @s
#
# Layer 4
#
# SFX
execute at @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:4}},scores={charge=145..}] run playsound minecraft:block.glass.step block @a[distance=..15] ~ ~ ~ 1 1 0.1
# Block removal
execute at @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:4}},scores={charge=145..}] run setblock ~ ~ ~ minecraft:water
# Entity removal
execute as @e[type=minecraft:marker,nbt={data:{palace_library_door:2,layer:4}}] at @s if block ~ ~ ~ minecraft:water run kill @s
#
#
# As long as there is a Palace Library Door Block marker with a value of 2, keep running this every tick.
execute if entity @e[type=minecraft:marker,nbt={data:{palace_library_door:2}}] run schedule function atrium:structures/palace/library_door_open 1t