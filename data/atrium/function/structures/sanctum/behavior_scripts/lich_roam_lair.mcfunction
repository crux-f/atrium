# Chance of running from lich_idle every second
#
# Teleports to a random atrium_sanctum_lair_tp point between 3 and 100 blocks away from current location
function atrium:structures/sanctum/fx/lich_tp
tp @s @e[limit=1,sort=random,tag=atrium_sanctum_lair_tp,distance=3..100]
function atrium:structures/sanctum/fx/lich_tp
# Reset score
scoreboard players set @s charge 0
#
# If gravity was disabled, re-enable it.
execute if data entity @s NoGravity run data remove entity @s NoGravity