# Some entities get special particles all the time. This is run every tick that any entity exists with
# the 'atrium_particle' tag.
#
execute at @e[tag=fire_particles] run particle minecraft:flame ~ ~1.5 ~ 0.1 0.2 0.1 0.03 8 normal
execute at @e[tag=terror_particles] run particle dust 0.180 1.000 0.235 2 ~ ~ ~ 0.5 0.5 0.5 0.5 10 normal
execute at @e[tag=glow_particles] run particle minecraft:glow ~ ~ ~ 0.1 0.1 0.1 0 1 normal