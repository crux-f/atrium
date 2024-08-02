# Resurrect the nearest dead player
execute at @s run gamemode survival @p[tag=resurrectee,distance=..10]
# Increase the counter for having resurrected other players by 1
scoreboard players add @a[tag=resurrector] resurrect_others 1
# Give each Resurrector an advancement
advancement grant @s only atrium:belief/resurrect_other_player
advancement grant @s[scores={resurrect_others=10..}] only atrium:belief/resurrect_10
advancement grant @s[scores={resurrect_others=20..}] only atrium:belief/resurrect_20
advancement grant @s[scores={resurrect_others=50..}] only atrium:belief/resurrect_50
#
# Give the Resurrectee the 60 deaths advancement if they are in survival and have died 60+ times
advancement grant @p[tag=resurrectee,gamemode=survival,scores={entropy=60..}] only atrium:belief/ive_come_to_bargain
# Reset the repeat counter
scoreboard players set @a[tag=resurrector] resurrect 0
# XP "exchange":
# Resurrector gains 1-3 levels
execute if entity @p[tag=resurrectee,level=2..] run xp add @s 1 levels
execute if entity @p[tag=resurrectee,level=2..] if predicate atrium:percentage_chances/0.50_p run xp add @s 1 levels
execute if entity @p[tag=resurrectee,level=2..] if predicate atrium:percentage_chances/0.50_p run xp add @s 1 levels
# Resurrectee loses 1-3 levels
execute as @a[tag=resurrectee] if entity @s[gamemode=survival] run xp add @s -1 levels
execute as @a[tag=resurrectee] if entity @s[gamemode=survival] if predicate atrium:percentage_chances/0.50_p run xp add @s -1 levels
execute as @a[tag=resurrectee] if entity @s[gamemode=survival] if predicate atrium:percentage_chances/0.50_p run xp add @s -1 levels
# Remove the Resurrector and Resurrectee tags
execute at @s run tag @p[tag=resurrectee] remove resurrectee
tag @s remove resurrector
# stop resurrect_repeat from continuing if nobody else is currently performing one
execute unless entity @a[tag=resurrector] run schedule clear atrium:shrines/resurrection/resurrect_repeat
