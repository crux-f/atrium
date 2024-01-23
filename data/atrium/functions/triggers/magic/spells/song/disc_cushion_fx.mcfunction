# special fx
execute at @e[tag=atrium_floating_disc] run particle minecraft:shriek 1 ~ ~-1.25 ~ 0 0 0 0 5 normal
#
# schedule itself until it gets cancelled
schedule function atrium:triggers/magic/spells/song/disc_cushion_fx 1s