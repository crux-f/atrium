# "When you sleep, you have a 25% chance to dream something useful".
#
# Revoke to allow for re-trigger
advancement revoke @s only atrium_events:patreon/anomalies/nightmares
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
# Do this thing to stop people from spamming it
tag @s add having_nightmare
function atrium_events:patreon/anomalies/nightmare_end_of_night_check
