# particles and sound
playsound minecraft:entity.zombie_villager.cure master @a[distance=..15] ~ ~ ~ 1 1 0.1
#
# Tag this player as the Resurrector.
tag @s add resurrector
# tag the nearest player to the Resurrector in spectator mode as the Resurrectee
tag @p[gamemode=spectator,distance=..10] add resurrectee
# IF there is a Resurrector and a Resurrectee, Consume the apple and start the repeat function
execute if entity @a[tag=resurrectee,distance=..10] run clear @s minecraft:golden_apple 1
execute if entity @a[tag=resurrectee,distance=..10] run function atrium:shrines/resurrection/resurrect_repeat
# If there isn't, remove the resurrector tag from the player and deliver failure message
execute unless entity @a[tag=resurrectee,distance=..10] run tellraw @s {"text":"You reach out to the beyond... But there was nobody to answer.","italic":true,"color":"red"}
execute unless entity @a[tag=resurrectee,distance=..10] run tag @s remove resurrector
