# stop resurrect_repeat from continuing
schedule clear atrium:shrines/resurrect_repeat
# Reset the repeat counter
scoreboard players set @p[tag=resurrector] resurrect 0
# Run the XP script at each Resurrector who's holding a Diamond
execute at @a[tag=resurrector,tag=!free_res] run function atrium:shrines/resurrect_xp
# Resurrect the nearest dead player if the Resurrector has a Totem (Totem res requires no xp)
execute at @a[tag=resurrector,tag=free_res] run gamemode survival @p[tag=resurrectee,distance=..10]
# Increase the counter for having resurrected other players by 1
scoreboard players add @p[tag=resurrector] resurrect_others 1
# Give each Resurrector an advancement
execute unless entity @p[tag=resurrectee,distance=1..15,gamemode=spectator] run advancement grant @a[tag=resurrector] only atrium:belief/resurrect_1
execute unless entity @p[tag=resurrectee,distance=1..15,gamemode=spectator] run advancement grant @a[tag=resurrector,scores={resurrect_others=10..}] only atrium:belief/resurrect_10
execute unless entity @p[tag=resurrectee,distance=1..15,gamemode=spectator] run advancement grant @a[tag=resurrector,scores={resurrect_others=20..}] only atrium:belief/resurrect_20
execute unless entity @p[tag=resurrectee,distance=1..15,gamemode=spectator] run advancement grant @a[tag=resurrector,scores={resurrect_others=30..}] only atrium:belief/resurrect_30
# Give the Resurrectee the 60 deaths advancement if they are in survival and have died 60+ times
advancement grant @p[tag=resurrectee,gamemode=survival,scores={deaths=60..}] only atrium:ive_come_to_bargain
# Play failure sfx if the Resurrectee is still in Spectator
execute at @p[tag=resurrector] if entity @p[tag=resurrectee,distance=1..15,gamemode=spectator] run playsound minecraft:block.conduit.deactivate master @a[distance=..30] ~ ~ ~ 0.5 0.2 0.1
execute at @p[tag=resurrector] if entity @p[tag=resurrectee,distance=1..15,gamemode=spectator] run tellraw @p[tag=resurrector] {"text":"But you were not strong enough.","italic":true,"color":"red"}
# Remove the Resurrector and Resurrectee tags regardless of success or failure
execute as @a[tag=resurrector] at @s run tag @p[tag=resurrectee,distance=..10] remove resurrectee
execute as @a[tag=resurrector] at @s run tag @p[tag=resurrector,distance=..10] remove resurrector
execute as @a[tag=resurrector] at @s run tag @p[tag=resurrector,distance=..10] remove free_res
