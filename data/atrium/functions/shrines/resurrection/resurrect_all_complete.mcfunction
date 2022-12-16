# Resurrect the nearest dead player
execute at @s run gamemode survival @a[tag=resurrectee,distance=..20]
# Increase the counter for having resurrected other players by 1 for each player resurrected
execute at @s as @a[tag=resurrectee,distance=..20,gamemode=survival] run scoreboard players add @p[tag=resurrector] resurrect_others 1
# Give Resurrector advancement(s)
advancement grant @s only atrium:belief/resurrect_1
advancement grant @s[scores={resurrect_others=10..}] only atrium:belief/resurrect_10
advancement grant @s[scores={resurrect_others=20..}] only atrium:belief/resurrect_20
advancement grant @s[scores={resurrect_others=30..}] only atrium:belief/resurrect_30
#
# Give Resurrectees the 60 deaths advancement if they are in survival and have died 60+ times
advancement grant @a[tag=resurrectee,gamemode=survival,scores={entropy=60..}] only atrium:belief/ive_come_to_bargain
# Reset the repeat counter
scoreboard players set @a[tag=resurrector] resurrect 0
# Remove the Resurrector and Resurrectee tags
execute at @s run tag @a[tag=resurrectee,distance=..20] remove resurrectee
tag @s remove resurrector
# stop resurrect_repeat from continuing if nobody else is currently performing one
execute unless entity @a[tag=resurrector] run schedule clear atrium:shrines/resurrection/resurrect_all_repeat
