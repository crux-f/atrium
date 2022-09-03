# Teleport particles + sfx
execute at @e[tag=pyronicus_cutscene] run particle minecraft:flame ~ ~1 ~ 0.5 1 0.5 0.25 50
execute at @e[tag=pyronicus_cutscene] run particle minecraft:flash ~ ~1 ~ 0 0 0 0.25 5
execute at @e[tag=pyronicus_cutscene] run playsound minecraft:entity.blaze.shoot master @a[distance=..50] ~ ~ ~ 0.5 0.5 0.1
#
# Remove cutscene Pyronicus
execute as @e[tag=pyronicus_cutscene] run tp @s ~ ~-500 ~
#
# Restore AI to enemies that were awaiting_scene_end
execute as @e[tag=awaiting_scene_end,distance=..25] run data remove entity @s NoAI