# Live!
gamemode survival @s
#
# 5 level xp penalty for resurrecting this way
xp add @s -5 levels
#
execute at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:respawn_anchor[charges=1] run setblock ~ ~ ~ minecraft:respawn_anchor[charges=0]
#
execute at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:respawn_anchor[charges=2] run setblock ~ ~ ~ minecraft:respawn_anchor[charges=1]
#
execute at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:respawn_anchor[charges=3] run setblock ~ ~ ~ minecraft:respawn_anchor[charges=2]
#
execute at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:respawn_anchor[charges=4] run setblock ~ ~ ~ minecraft:respawn_anchor[charges=3]
#
# Particles
execute at @s run particle minecraft:reverse_portal ~ ~ ~ 0.25 1.5 0.25 0.1 50 normal
#
# Sound
execute at @s run playsound minecraft:block.respawn_anchor.deplete player @a[distance=..5] ~ ~ ~ 1 1 0.1
#
# Make the respawn less awkward
tp @s ~ ~0.5 ~