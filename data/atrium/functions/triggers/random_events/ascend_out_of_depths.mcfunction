# Teleport the player who stands on top of The Depths to the same X + Z coords in The Overworld, except at Y=-62.
execute at @s run setblock ~ ~-1 ~ minecraft:air destroy
execute at @s run setblock ~1 ~-1 ~ minecraft:air destroy
execute at @s run setblock ~ ~-1 ~1 minecraft:air destroy
execute at @s run setblock ~-1 ~-1 ~ minecraft:air destroy
execute at @s run setblock ~ ~-1 ~-1 minecraft:air destroy
execute as @s at @s in minecraft:overworld run tp @s ~ -63 ~
execute at @s unless block ~ ~1 ~ #atrium:non_solid_blocks run setblock ~ ~1 ~ minecraft:air destroy
execute at @s unless block ~ ~ ~ #atrium:non_solid_blocks run setblock ~ ~ ~ minecraft:air destroy
execute at @s unless block ~ ~-1 ~ #atrium:non_solid_blocks run setblock ~ ~-1 ~ minecraft:air destroy
#
execute at @s unless block ~1 ~1 ~ #atrium:non_solid_blocks run setblock ~1 ~1 ~ minecraft:air destroy
execute at @s unless block ~1 ~ ~ #atrium:non_solid_blocks run setblock ~1 ~ ~ minecraft:air destroy
execute at @s unless block ~1 ~-1 ~ #atrium:non_solid_blocks run setblock ~1 ~-1 ~ minecraft:air destroy
#
execute at @s unless block ~ ~1 ~1 #atrium:non_solid_blocks run setblock ~ ~1 ~1 minecraft:air destroy
execute at @s unless block ~ ~ ~1 #atrium:non_solid_blocks run setblock ~ ~ ~1 minecraft:air destroy
execute at @s unless block ~ ~-1 ~1 #atrium:non_solid_blocks run setblock ~ ~-1 ~1 minecraft:air destroy
#
execute at @s unless block ~-1 ~1 ~ #atrium:non_solid_blocks run setblock ~-1 ~1 ~ minecraft:air destroy
execute at @s unless block ~-1 ~ ~ #atrium:non_solid_blocks run setblock ~-1 ~ ~ minecraft:air destroy
execute at @s unless block ~-1 ~-1 ~ #atrium:non_solid_blocks run setblock ~-1 ~-1 ~ minecraft:air destroy
#
execute at @s unless block ~ ~1 ~-1 #atrium:non_solid_blocks run setblock ~ ~1 ~-1 minecraft:air destroy
execute at @s unless block ~ ~ ~-1 #atrium:non_solid_blocks run setblock ~ ~ ~-1 minecraft:air destroy
execute at @s unless block ~ ~-1 ~-1 #atrium:non_solid_blocks run setblock ~ ~-1 ~-1 minecraft:air destroy
#
# Safety
execute in minecraft:overworld run spreadplayers ~ ~ 60 15 under 0 false @s
#
# SFX
execute at @s run playsound minecraft:entity.generic.explode block @a[distance=..30] ~ ~ ~ 0.25 0 0.1
# Burrow Counter
scoreboard players add @s depths_burrows 1
# Depths Warden - Invisible?
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/random_events/ascend_out_of_depths