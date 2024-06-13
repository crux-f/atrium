# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/items/wearing_armor
#
# If the player is currently under the effect of the Natural Armor spell (atrium_natural_armor_target tag) clear the Resistence effect and remove the tag 
execute as @s[tag=atrium_natural_armor_target] run effect clear @s resistance
execute as @s[tag=atrium_natural_armor_target] run tag @s remove atrium_natural_armor_target