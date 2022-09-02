# Let's mess with some players.
#
execute if block ~ ~ ~ #minecraft:buttons as @s run function atrium:misc/block_state/press_button
execute if block ~ ~ ~ #minecraft:fence_gates as @s run function atrium:misc/block_state/toggle_fence_gate
execute if block ~ ~ ~ #minecraft:trapdoors as @s run function atrium:misc/block_state/toggle_trapdoor
execute if block ~ ~ ~ minecraft:lever as @s run function atrium:misc/block_state/toggle_lever