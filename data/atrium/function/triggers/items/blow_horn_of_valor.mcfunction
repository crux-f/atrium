# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/blow_horn_of_valor
#
# Grant Resistance I to nearby allies (horns are audible from up to 256 blocks away)
execute at @s run effect give @e[type=#atrium:village_allies,distance=..256] absorption 25 0