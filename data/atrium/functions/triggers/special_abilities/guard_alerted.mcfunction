# Allow guards within 15 blocks to move again
#
execute at @s as @e[tag=guarding,tag=!alerted,distance=..15] run attribute @s minecraft:generic.movement_speed base set 0.35
# Alerted particles
execute at @s as @e[tag=guarding,tag=!alerted,distance=..15] run execute at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.1 0.1 0.1 0.5 20
#
# tag them to prevent them from being re-alerted
execute at @s run tag @e[tag=guarding,distance=..15] add alerted
#
# Revoke advancement to allow for retrigger
advancement revoke @s only atrium:triggers/special_abilities/guard_alerted
