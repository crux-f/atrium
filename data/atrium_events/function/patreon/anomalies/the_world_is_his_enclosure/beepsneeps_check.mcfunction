# Checks once every 10 seconds
schedule function atrium_events:patreon/anomalies/the_world_is_his_enclosure/beepsneeps_check 10s
#
# If it is dusk, choose a random player to be the Victim.
execute if predicate atrium:time_check/is_dusk unless entity @a[scores={atrium_beepsneeps_anomaly=1..}] as @r[gamemode=survival] at @s run function atrium_events:patreon/anomalies/the_world_is_his_enclosure/unleash_beepsneeps
#
# If it is morning, he may be released again next night
execute if predicate atrium:time_check/is_morning run scoreboard players reset @a atrium_beepsneeps_anomaly
# Beepsneeps disappears!
execute if predicate atrium:time_check/is_morning at @e[tag=atrium_beepsneeps] run particle minecraft:poof ~ ~0.25 ~ 0.25 0.25 0.25 0.1 25 normal
execute if predicate atrium:time_check/is_morning as @e[tag=atrium_beepsneeps] at @s run tp @s ~ ~-10000 ~
#
# If he is already released, play a stalking sound.
execute as @e[tag=atrium_beepsneeps] at @s run playsound atrium:entity.beepsneeps.ambient hostile @a[distance=..15] ~ ~ ~ 1 1 0.1