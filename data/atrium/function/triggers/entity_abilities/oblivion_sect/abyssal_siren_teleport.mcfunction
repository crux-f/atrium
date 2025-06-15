# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/oblivion_sect/abyssal_siren_teleport
#
# If you are within 30 blocks of a Abyssal Siren, teleport you to the nearest one.
execute at @s if entity @n[type=guardian,tag=atrium_abyssal_siren,distance=..30] run particle minecraft:flash ~ ~1.25 ~ 0 0 0 0 1
execute at @s if entity @n[type=guardian,tag=atrium_abyssal_siren,distance=..30] run playsound minecraft:block.bubble_column.whirlpool_inside hostile @a[distance=..5] ~ ~ ~ 1 2 1
execute at @s if entity @n[type=guardian,tag=atrium_abyssal_siren,distance=..30] run tp @s @e[limit=1,tag=atrium_abyssal_siren,distance=..30,sort=nearest] 
execute at @s if entity @n[type=guardian,tag=atrium_abyssal_siren,distance=..30] run tp @s ~ ~ ~ facing entity @n[type=guardian,tag=atrium_abyssal_siren]
#
# Arrival effects
execute at @s at @n[type=guardian,tag=atrium_abyssal_siren,distance=..1] run particle minecraft:flash ~ ~1.25 ~ 0 0 0 0 1
execute at @s at @n[type=guardian,tag=atrium_abyssal_siren,distance=..1] run playsound minecraft:block.bubble_column.whirlpool_inside hostile @a[distance=..5] ~ ~ ~ 1 2 1