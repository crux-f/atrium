# Revoke to allow re-trigger
advancement revoke @s only atrium_events:triggers/entities/armored_phantom_dismount_melee_rider
# say working
#
# Only triggers when the player is damaged by an armored phantom.
#
# Dismount the rider if its a melee character
execute at @s as @n[type=minecraft:phantom,tag=atrium_armored_phantom,distance=..5] on passengers run ride @s dismount