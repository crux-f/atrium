# Particle animation
execute at @e[tag=atrium_earth_sigil_dummy] run particle minecraft:falling_dust minecraft:gravel ^1 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy] run particle minecraft:falling_dust minecraft:gravel ^-1 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy] run particle minecraft:falling_dust minecraft:gravel ^ ^ ^1 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy] run particle minecraft:falling_dust minecraft:gravel ^ ^ ^-1 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy] run tp @e[tag=atrium_earth_sigil_dummy] ~ ~ ~ ~-2 ~0
# LEVEL 3 ONLY: Secondary particle ring that rotates the other direction
execute at @e[tag=atrium_earth_sigil_dummy_s] run particle minecraft:falling_dust minecraft:dirt ^0.25 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy_s] run particle minecraft:falling_dust minecraft:dirt ^-0.25 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy_s] run particle minecraft:falling_dust minecraft:dirt ^ ^ ^0.25 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy_s] run particle minecraft:falling_dust minecraft:dirt ^ ^ ^-0.25 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy_s] run particle minecraft:falling_dust minecraft:gravel ^2.75 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy_s] run particle minecraft:falling_dust minecraft:gravel ^-2.75 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy_s] run particle minecraft:falling_dust minecraft:gravel ^ ^ ^2.75 0 0 0 0 1 normal
execute at @e[tag=atrium_earth_sigil_dummy_s] run particle minecraft:falling_dust minecraft:gravel ^ ^ ^-2.75 0 0 0 0 1 normal
execute as @e[tag=atrium_earth_sigil_dummy_s] at @s run tp @s ~ ~ ~ ~2 ~0
# Remove the dummy when the cloud is about to expire
execute as @e[tag=atrium_earth_sigil_dummy] at @s unless entity @e[tag=atrium_earth_sigil,distance=..3] run kill @s
execute as @e[tag=atrium_earth_sigil_dummy_s] at @s unless entity @e[tag=atrium_earth_sigil,distance=..3] run kill @s
# Keep running until cloud expires
execute as @e[tag=atrium_earth_sigil_dummy] at @s if entity @e[tag=atrium_earth_sigil,distance=..3] run schedule function atrium:triggers/magic/spells/earth_sigil_repeat 1t
