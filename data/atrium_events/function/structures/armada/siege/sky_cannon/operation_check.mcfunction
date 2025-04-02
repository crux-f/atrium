# Run once the cannon is complete, and every 10 seconds thereafter.
#
# If the anchoring block is destroyed, destroy the marker to prevent this machine from working.
# Also play a sound and display particles to convey to the player that the cannon is broken.
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] at @s unless block ~ ~ ~ minecraft:redstone_lamp run playsound minecraft:block.vault.break block @a[distance=..15] ~ ~ ~ 1.25 0 0.25
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] at @s unless block ~ ~ ~ minecraft:redstone_lamp run particle minecraft:explosion ~ ~ ~ 0.1 0 0.1 0 1 normal
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] at @s unless block ~ ~ ~ minecraft:redstone_lamp run kill @s
#
# If there are any active armada within 5 blocks of the cannon, light up the lamp, display particles, and increment the charge by 1. Also play a charging sound
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] at @s if entity @n[team=atrium_armada,distance=..5] run setblock ~ ~ ~ minecraft:redstone_lamp[lit=true]
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] at @s if entity @n[team=atrium_armada,distance=..5] run particle small_flame ~ ~ ~ 0.2 0.3 0.2 0.06 15 normal
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] at @s if entity @n[team=atrium_armada,distance=..5] run scoreboard players add @s charge 1
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] at @s if entity @n[team=atrium_armada,distance=..5] run playsound minecraft:block.vault.activate block @a[distance=..10] ~ ~ ~ 0.75 0 0.1
#
# If the charge reaches 3 (30 seconds), fire the cannon!
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] if score @s charge matches 3.. at @s run function atrium_events:structures/armada/siege/sky_cannon/fire_cannon
# If there's no active armada within 5 blocks, turn off the lamp.
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] at @s unless entity @n[team=atrium_armada,distance=..5] run setblock ~ ~ ~ minecraft:redstone_lamp[lit=false]
execute as @e[type=marker,tag=atrium_armada_sky_cannon_controller] at @s unless entity @n[team=atrium_armada,distance=..5] run playsound minecraft:block.vault.deactivate block @a[distance=..10] ~ ~ ~ 0.75 0 0.1
# If there are still active cannon controllers, keep this script running.
execute if entity @e[type=marker,tag=atrium_armada_sky_cannon_controller] run schedule function atrium_events:structures/armada/siege/sky_cannon/operation_check 10s
