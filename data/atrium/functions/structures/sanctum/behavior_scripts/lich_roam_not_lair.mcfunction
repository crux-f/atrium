# Chance of running from lich_combat_mode
#
# Teleports to a random atrium_sanctum_tp point between 5 and 80 blocks away from current location
function atrium:structures/sanctum/fx/lich_tp
tp @s @e[limit=1,sort=random,tag=atrium_sanctum_tp,tag=!atrium_sanctum_lair_tp,distance=5..80]
function atrium:structures/sanctum/fx/lich_tp
# Reset score
scoreboard players set @s charge 0
# If gravity was disabled, re-enable it.
execute if data entity @s NoGravity run data remove entity @s NoGravity