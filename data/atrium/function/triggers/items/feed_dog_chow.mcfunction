# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/feed_dog_chow
#
# Give nearest dog Regeneration for 5 minutes
execute at @s as @e[type=minecraft:wolf,sort=nearest,limit=1] run effect give @s minecraft:regeneration 300 0