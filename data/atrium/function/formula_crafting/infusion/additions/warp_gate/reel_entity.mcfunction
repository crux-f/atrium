# Set the position of the hook to the coordinates stored in the compass
execute positioned ~ ~3 ~ store result entity @s Pos[0] double 1 run scoreboard players get @s atrium_x_coordinate
execute positioned ~ ~3 ~ store result entity @s Pos[1] double 1 run scoreboard players get @s atrium_y_coordinate
execute positioned ~ ~3 ~ store result entity @s Pos[2] double 1 run scoreboard players get @s atrium_z_coordinate
#
# Teleport the player who stepped through the gate to the warp_gate_hook (adding 0.5 to x and z and 1 to y in order to land the player on top of the target lodestone)
execute at @s positioned ~0.5 ~1 ~0.5 run tp @e[tag=atrium_currently_warping] ~ ~ ~
#
# Remove atrium_currently_warping tag (used to exclude them from getting spammed by the warp gate)
execute at @s positioned ~0.5 ~1 ~0.5 run tag @a[tag=atrium_currently_warping] remove atrium_currently_warping
execute at @s run particle minecraft:flash ~ ~1.25 ~ 0.25 0.25 0.25 0.1 25 normal
execute at @s run playsound minecraft:entity.enderman.teleport player @a[distance=..10] ~ ~ ~ 0.5 0.5 0.1
# Finally, remove the atrium_warp_gate_hook.
execute at @s run kill @e[tag=atrium_warp_gate_hook,distance=..3]