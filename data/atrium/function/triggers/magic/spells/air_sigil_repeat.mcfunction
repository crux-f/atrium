# Particle animation
execute at @e[tag=atrium_air_sigil_dummy] run particle cloud ^0.5 ^ ^ 0 3 0 0 10 normal
execute at @e[tag=atrium_air_sigil_dummy] run particle cloud ^-0.5 ^ ^ 0 3 0 0 10 normal
execute at @e[tag=atrium_air_sigil_dummy] run particle cloud ^ ^ ^0.5 0 3 0 0 10 normal
execute at @e[tag=atrium_air_sigil_dummy] run particle cloud ^ ^ ^-0.5 0 3 0 0 10 normal
execute at @e[tag=atrium_air_sigil_dummy] run tp @e[tag=atrium_air_sigil_dummy] ~ ~ ~ ~-2 ~0
# Deflection of nearby arrows
execute at @e[tag=atrium_air_sigil_dummy] positioned ~ ~1 ~ run data merge entity @e[type=arrow,distance=..2.5,limit=1] {Motion:[0.0,2.0,0.0]}
# Remove the dummy when the cloud is about to expire
execute as @e[tag=atrium_air_sigil_dummy] at @s unless entity @e[tag=atrium_air_sigil,distance=..3] run kill @s
# Keep running until cloud expires
execute as @e[tag=atrium_air_sigil_dummy] at @s if entity @e[tag=atrium_air_sigil,distance=..3] run schedule function atrium:triggers/magic/spells/air_sigil_repeat 1t
