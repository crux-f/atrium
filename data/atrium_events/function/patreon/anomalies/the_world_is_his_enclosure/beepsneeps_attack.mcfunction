# Revoke to allow re-trigger
advancement revoke @s only atrium_events:patreon/anomalies/the_world_is_his_enclosure/beepsneeps_attack
#
# Poison
effect give @s minecraft:poison 20 1 true
#
# Sound
# (goes here)
#
# Beepsneeps disappears!
execute at @e[tag=atrium_beepsneeps] run playsound atrium:entity.beepsneeps.hurt hostile @a[distance=..10] ~ ~ ~ 1 1 0.1
execute at @e[tag=atrium_beepsneeps] run particle minecraft:poof ~ ~0.25 ~ 0.25 0.25 0.25 0.1 25 normal
execute as @e[tag=atrium_beepsneeps] at @s run tp @s ~ ~-10000 ~