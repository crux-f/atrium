# New world, new randomizer.
#
# Revoke all of your GAMEPLAY advancements.
function atrium_events:spawn/advancement_revoke
#
# If you had an elemental attunement already, grant the appropriate Memory and revoke it afterwards.
execute if entity @s[advancements={atrium:air_start=true}] run advancement grant @s only atrium:air_memory
execute if entity @s[advancements={atrium:fire_start=true}] run advancement grant @s only atrium:earth_memory
execute if entity @s[advancements={atrium:earth_start=true}] run advancement grant @s only atrium:fire_memory
execute if entity @s[advancements={atrium:water_start=true}] run advancement grant @s only atrium:water_memory
#
advancement revoke @s only atrium:air_start
advancement revoke @s only atrium:earth_start
advancement revoke @s only atrium:fire_start
advancement revoke @s only atrium:water_start
# Choose a random value between 1 and 4 and store it as the player's charge score
execute store result score @s charge run random value 1..4
#
execute if score @s charge matches 1 run function atrium_events:spawn/spawn_air
execute if score @s charge matches 2 run function atrium_events:spawn/spawn_earth
execute if score @s charge matches 3 run function atrium_events:spawn/spawn_fire
execute if score @s charge matches 4 run function atrium_events:spawn/spawn_water
#
# reset
scoreboard players reset @s charge
#
# Track that you've finished spawning this iteration
advancement grant @s only atrium_events:tracking/spawn/iteration_5_spawned
#
advancement grant @s only atrium:atrium_root
advancement grant @s only atrium:events_root
#
# ANOMALY: On Your Heels
# Each time a player enters the world for the first time, an hour after they spawn in, someone arrives looking for them.
#
# Set tracking score to -3600 (Seconds) (1 hour)
scoreboard players set @s atrium_condition_timer -3600