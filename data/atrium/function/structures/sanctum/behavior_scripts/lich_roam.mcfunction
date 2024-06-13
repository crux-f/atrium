# Chance of running from lich_idle every second
#
# Teleports to a random atrium_sanctum_tp point between 5 and 80 blocks away from current location
function atrium:structures/sanctum/fx/lich_tp
tp @s @e[limit=1,sort=random,tag=atrium_sanctum_tp,distance=5..80]
function atrium:structures/sanctum/fx/lich_tp
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 60
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 60
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 60
# If gravity was disabled, re-enable it.
execute if data entity @s NoGravity run data remove entity @s NoGravity