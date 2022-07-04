# Remove counter
#
execute at @s run kill @e[distance=..10,tag=rune_counter,limit=1,sort=nearest]
#
# Revoke to allow for re-trigger
advancement revoke @s only atrium:triggers/special_abilities/rune_counter_cleanup
