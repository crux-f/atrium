# execute at @s run setblock ~ ~-1 ~ minecraft:air destroy
# execute at @s run setblock ~1 ~-1 ~ minecraft:air destroy
# execute at @s run setblock ~ ~-1 ~1 minecraft:air destroy
# execute at @s run setblock ~-1 ~-1 ~ minecraft:air destroy
# execute at @s run setblock ~ ~-1 ~-1 minecraft:air destroy
# Void Entrance
execute at @s unless block ~ ~-1 ~ #atrium:non_solid_blocks run setblock ~ ~-1 ~ minecraft:air destroy
#
# Area to stand next to it
execute at @s unless block ~1 ~1 ~ #atrium:non_solid_blocks run setblock ~1 ~1 ~ minecraft:air destroy
execute at @s unless block ~1 ~ ~ #atrium:non_solid_blocks run setblock ~1 ~ ~ minecraft:air destroy
# execute at @s unless block ~1 ~-1 ~ #atrium:non_solid_blocks run setblock ~1 ~-1 ~ minecraft:air destroy
#
execute at @s unless block ~ ~1 ~1 #atrium:non_solid_blocks run setblock ~ ~1 ~1 minecraft:air destroy
execute at @s unless block ~ ~ ~1 #atrium:non_solid_blocks run setblock ~ ~ ~1 minecraft:air destroy
# execute at @s unless block ~ ~-1 ~1 #atrium:non_solid_blocks run setblock ~ ~-1 ~1 minecraft:air destroy
#
execute at @s unless block ~-1 ~1 ~ #atrium:non_solid_blocks run setblock ~-1 ~1 ~ minecraft:air destroy
execute at @s unless block ~-1 ~ ~ #atrium:non_solid_blocks run setblock ~-1 ~ ~ minecraft:air destroy
# execute at @s unless block ~-1 ~-1 ~ #atrium:non_solid_blocks run setblock ~-1 ~-1 ~ minecraft:air destroy
#
execute at @s unless block ~ ~1 ~-1 #atrium:non_solid_blocks run setblock ~ ~1 ~-1 minecraft:air destroy
execute at @s unless block ~ ~ ~-1 #atrium:non_solid_blocks run setblock ~ ~ ~-1 minecraft:air destroy
# execute at @s unless block ~ ~-1 ~-1 #atrium:non_solid_blocks run setblock ~ ~-1 ~-1 minecraft:air destroy