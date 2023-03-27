# This is run every tick that any entity exists with the "atrium_special" tag.
# Some entities get special particles all the time. 
#
execute at @e[tag=atrium_fire_particles] run particle minecraft:flame ~ ~1.5 ~ 0.1 0.2 0.1 0.03 8 normal
execute at @e[tag=atrium_terror_particles] run particle dust 0.180 1.000 0.235 2 ~ ~ ~ 0.5 0.5 0.5 0.5 10 normal
execute at @e[tag=atrium_glow_particles] run particle minecraft:glow ~ ~ ~ 0.1 0.1 0.1 0 1 normal
#
# Some entities have special behaviors that require checking every tick
execute as @e[tag=atrium_spellcaster] at @s run function atrium:entities/spellcaster_manager
# Special Patreon things
execute at @e[tag=atrium_seamwalkers_door] run particle minecraft:portal ~ ~2.5 ~ 0.1 1.5 0.1 0.25 5 normal