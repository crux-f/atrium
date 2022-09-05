# "When you sleep, you have a 25% chance to dream something useful".
#
# Revoke to allow for re-trigger
advancement revoke @s only atrium:patreon/nightmares
#
execute if entity @s[scores={nightmare_anomaly=600..}] run loot give @s loot atrium:patreon/nightmare_items
#
# Since the player had a nightmare, increase their counter to 36000 (30 minutes). While this doesn't affect the vanilla counter that spawns phantoms, it does
# affect my custom size counter.
#
scoreboard players set @s nightmare_anomaly 36000
# And also 3 chances to increase it more, why not
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players add @s nightmare_anomaly 10000
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players add @s nightmare_anomaly 10000
execute if predicate atrium:percentage_chances/0.35_p run scoreboard players add @s nightmare_anomaly 20000
#
# Message
tellraw @s {"text":"You awake in a cold sweat.","italic":true,"color":"gray"}