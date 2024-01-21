# New world, new randomizer.
#
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