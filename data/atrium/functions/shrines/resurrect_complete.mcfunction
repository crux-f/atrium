# stop resurrect_repeat from continuing
schedule clear atrium:shrines/resurrect_repeat
# Reset the repeat counter
scoreboard players set @a[tag=resurrector] resurrect 0
# Resurrect the nearest dead player
execute at @a[tag=resurrector] run gamemode survival @p[tag=resurrectee,distance=..10]
# Increase the counter for having resurrected other players by 1
scoreboard players add @a[tag=resurrector] resurrect_others 1
# Give each Resurrector an advancement
advancement grant @a[tag=resurrector] only atrium:belief/resurrect_1
advancement grant @a[tag=resurrector,scores={resurrect_others=10..}] only atrium:belief/resurrect_10
advancement grant @a[tag=resurrector,scores={resurrect_others=20..}] only atrium:belief/resurrect_20
advancement grant @a[tag=resurrector,scores={resurrect_others=30..}] only atrium:belief/resurrect_30
#
# Give the Resurrectee the 60 deaths advancement if they are in survival and have died 60+ times
advancement grant @p[tag=resurrectee,gamemode=survival,scores={entropy=60..}] only atrium:belief/ive_come_to_bargain
# Remove the Resurrector and Resurrectee tags
execute as @a[tag=resurrector] at @s run tag @p[tag=resurrectee] remove resurrectee
execute as @a[tag=resurrector] at @s run tag @p[tag=resurrector] remove resurrector
