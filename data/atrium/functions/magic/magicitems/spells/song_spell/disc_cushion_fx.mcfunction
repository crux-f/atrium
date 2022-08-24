# special fx
execute at @e[tag=floating_disc] run particle minecraft:shriek 1 ~ ~-1.25 ~ 0 0 0 0 5 normal
#
# schedule itself until it gets cancelled
schedule function atrium:magic/magicitems/spells/song_spell/disc_cushion_fx 1s