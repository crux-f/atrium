# this isn't included in the automation loop, it is activated by the player stepping on the pressure plate in the maze
#
# Teleport the nearest player to the maze return point
execute at @p run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1
execute at @p run playsound minecraft:entity.enderman.teleport master @a[distance=..50] ~ ~ ~ 0.6 0.1 0.1
execute as @p in minecraft:overworld run tp @s @e[tag=maze_return,limit=1]
execute in minecraft:overworld run kill @e[tag=maze_return]
