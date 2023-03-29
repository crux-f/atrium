# This is run every tick that any entity exists with the "atrium_special" tag.
# Some entities get special particles all the time. 
#
execute as @e[tag=atrium_particle] at @s run function atrium:entities/particle_manager
#
# Some entities have special behaviors that require checking every tick
execute as @e[tag=atrium_spellcaster] at @s run function atrium:entities/spellcaster_manager
execute as @e[tag=atrium_temporary_entity] at @s run function atrium:entities/temporary_entity_manager
# Special Patreon things
execute at @e[tag=atrium_seamwalkers_door] run particle minecraft:portal ~ ~2.5 ~ 0.1 1.5 0.1 0.25 5 normal