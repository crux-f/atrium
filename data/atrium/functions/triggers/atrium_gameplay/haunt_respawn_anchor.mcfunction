# Revoke
advancement revoke @s only atrium:triggers/atrium_gameplay/haunt_respawn_anchor
#
# Live!
# gamemode survival @s
#
# Remove XP
# xp add @s -1 levels
#
# Particles
execute at @s run particle reverse_portal ~ ~ ~ 0.25 1.5 0.25 0.1 50 normal
say here!
#
# execute at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:respawn_anchor[charges=1] run setblock ~ ~ ~ minecraft:respawn_anchor[charges=0]
#
# execute at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:respawn_anchor[charges=2] run setblock ~ ~ ~ minecraft:respawn_anchor[charges=1]
#
# execute at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:respawn_anchor[charges=3] run setblock ~ ~ ~ minecraft:respawn_anchor[charges=2]
#
# execute at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:respawn_anchor[charges=4] run setblock ~ ~ ~ minecraft:respawn_anchor[charges=3]