# Teleport the player who stands on top of The Depths to the same X + Z coords in The Overworld, except at Y=-63.
execute as @s at @s in minecraft:overworld run tp @s ~ -63 ~
# Clear exit area
execute at @s unless block ~ ~1 ~ #atrium:non_solid_blocks run setblock ~ ~1 ~ minecraft:air destroy
execute at @s unless block ~ ~ ~ #atrium:non_solid_blocks run setblock ~ ~ ~ minecraft:air destroy
# Unless there is already an adjacent void opening, make a new one.
execute at @s if block ~1 ~-1 ~ minecraft:bedrock if block ~-1 ~-1 ~ minecraft:bedrock if block ~ ~-1 ~1 minecraft:bedrock if block ~ ~-1 ~-1 minecraft:bedrock run function atrium:triggers/random_events/overworld_burrow
#
# Safety
execute in minecraft:overworld run spreadplayers ~ ~ 60 15 under -55 false @s
#
# SFX
execute at @s run playsound minecraft:ambient.cave block @a[distance=..30] ~ ~ ~ 0.25 0 0.1
# Burrow Counter
# scoreboard players add @s depths_burrows 1
# Depths Warden - Invisible?
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/random_events/ascend_out_of_depths