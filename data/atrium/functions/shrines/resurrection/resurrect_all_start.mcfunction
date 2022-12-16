# particles and sound
playsound minecraft:entity.zombie_villager.cure master @a[distance=..30] ~ ~ ~ 0.5 1 0.1
playsound atrium:favor.aurora neutral @a[distance=..30] ~ ~ ~ 0.75 0.75 0.5
#
# Tag this player as the Resurrector.
tag @s add resurrector
# tag all players within 20 blocks of the Resurrector in spectator mode as the Resurrectee
tag @a[gamemode=spectator,distance=..20] add resurrectee
# IF there is a Resurrector and a Resurrectee, Consume the apple and start the repeat function
execute if entity @a[tag=resurrectee,distance=..20] run clear @s minecraft:enchanted_golden_apple 1
execute if entity @a[tag=resurrectee,distance=..20] run function atrium:shrines/resurrection/resurrect_all_repeat
# If there isn't, remove the resurrector tag from the player and deliver failure message
execute unless entity @a[tag=resurrectee,distance=..20] run tellraw @s {"text":"You reach out to the beyond... But there was nobody to answer.","italic":true,"color":"red"}
execute unless entity @a[tag=resurrectee,distance=..20] run tag @s remove resurrector
