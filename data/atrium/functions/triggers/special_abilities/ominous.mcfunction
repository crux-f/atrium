# Alerted particles
execute at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.1 0.1 0.1 0.5 20
#
# Give player Bad Omen III.
effect give @s minecraft:bad_omen 2700 2 true
#
# Revoke advancement to allow for retrigger
advancement revoke @s only atrium:triggers/special_abilities/ominous
