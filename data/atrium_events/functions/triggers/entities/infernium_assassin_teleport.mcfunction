# Revoke to allow re-trigger
advancement revoke @s only atrium_events:triggers/entities/infernium_assassin_teleport
#
# Only triggers when the player is damaged by a projectile fired by an assassin.
# Particles + SFX
execute at @s at @e[limit=1,tag=atrium_infernium_assassin,tag=atrium_teleport_ready,sort=nearest] run particle large_smoke ~ ~1.75 ~ 0.5 1 0.5 0.1 20 normal
execute at @s at @e[limit=1,tag=atrium_infernium_assassin,tag=atrium_teleport_ready,sort=nearest] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 1.25 0.1
# Teleport nearest assassin who hasn't teleported yet to the player that was hit by the arrow
execute at @s run tp @e[limit=1,tag=atrium_infernium_assassin,tag=atrium_teleport_ready,sort=nearest] ^ ^ ^
# Run the script for the assassin switching to melee mode
execute at @s as @e[limit=1,tag=atrium_infernium_assassin,tag=atrium_teleport_ready,sort=nearest] at @s run function atrium_events:summon/infernium/behavior_scripts/assassin_appear_melee