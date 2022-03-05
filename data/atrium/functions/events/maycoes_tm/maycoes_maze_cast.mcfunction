# particles and sound
execute at @e[tag=maze_return] run execute at @p run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1
execute at @e[tag=maze_return] run playsound minecraft:entity.enderman.teleport master @a[distance=..50] ~ ~ ~ 0.6 0.1 0.1
# teleport targeted player to the maze in the between worlds dimension
execute at @e[tag=maze_return] run execute as @p in atrium:between_worlds run tp @s 1796.5 3 -866.5
# add second spell tag
tag @e[tag=maycoes] add second_spell
# Resume moving
function atrium:events/maycoes_tm/maycoes_resume_move
