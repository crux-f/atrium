# Particle animation
execute at @e[tag=atrium_time_sigil_dummy] run particle end_rod ^0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy] run particle end_rod ^-0.5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy] run particle end_rod ^ ^ ^0.5 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy] run particle end_rod ^ ^ ^-0.5 0 0 0 0 1 normal
execute as @e[tag=atrium_time_sigil_dummy] at @s run tp @s ~ ~ ~ ~-2 ~0
# LEVEL 3 ONLY: Secondary particle ring that rotates the other direction
execute at @e[tag=atrium_time_sigil_dummy_s] run particle falling_dust{block_state:"chiseled_quartz_block"} ^0.25 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy_s] run particle falling_dust{block_state:"chiseled_quartz_block"} ^-0.25 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy_s] run particle falling_dust{block_state:"chiseled_quartz_block"} ^ ^ ^0.25 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy_s] run particle falling_dust{block_state:"chiseled_quartz_block"} ^ ^ ^-0.25 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy_s] run particle end_rod ^2.75 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy_s] run particle end_rod ^-2.75 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy_s] run particle end_rod ^ ^ ^2.75 0 0 0 0 1 normal
execute at @e[tag=atrium_time_sigil_dummy_s] run particle end_rod ^ ^ ^-2.75 0 0 0 0 1 normal
execute as @e[tag=atrium_time_sigil_dummy_s] at @s run tp @s ~ ~ ~ ~2 ~0
# At the end of the sigil's duration...
# Visual effects + SFX
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239}] at @e[tag=atrium_time_sigil_dummy] run particle minecraft:dripping_obsidian_tear ~ ~ ~ 1.2 2 1.2 0.1 85
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239}] at @e[tag=atrium_time_sigil_dummy] run particle minecraft:flash ~ ~ ~ 0 0 0 0.1 85
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239}] at @e[tag=atrium_time_sigil_dummy] run playsound minecraft:block.respawn_anchor.deplete player @a[distance=..15] ~ ~ ~ 1 0.1 0.1
#
# Base area
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239},scores={charge=1}] at @e[tag=atrium_time_sigil_dummy] run effect give @e[distance=..3] minecraft:slowness 30 1 true
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239},scores={charge=1}] at @e[tag=atrium_time_sigil_dummy] run effect give @e[distance=..3] minecraft:slow_falling 30 0 true
# Level 2 and up = larger radius
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239},scores={charge=2}] at @e[tag=atrium_time_sigil_dummy] run effect give @e[distance=..5] minecraft:slowness 40 2 true
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239},scores={charge=2}] at @e[tag=atrium_time_sigil_dummy] run effect give @e[distance=..5] minecraft:slow_falling 40 0 true
# Level 3 = largest radius
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239},scores={charge=3}] at @e[tag=atrium_time_sigil_dummy] run effect give @e[distance=..5] minecraft:slowness 50 3 true
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239},scores={charge=3}] at @e[tag=atrium_time_sigil_dummy] run effect give @e[distance=..5] minecraft:slow_falling 50 0 true
#
# Remove the dummy
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239}] run kill @e[tag=atrium_time_sigil_dummy]
#
# LEVEL 3 ONLY: Remove the secondary dummy
execute if entity @e[tag=atrium_time_sigil,nbt={Age:239},scores={charge=3..}] run kill @e[tag=atrium_time_sigil_dummy_s]
#
# Continue running the script until the sigil expires
execute if entity @e[tag=atrium_time_sigil] run schedule function atrium:triggers/magic/spells/time_sigil_repeat 1t

