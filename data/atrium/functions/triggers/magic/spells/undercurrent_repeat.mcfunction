# Keeps checking downwards until either A: it reaches a non-water block or B: it hits the range limit of 30 blocks.
#
# add charge every tick
scoreboard players add @e[tag=atrium_undercurrent_anchor] charge 1
#
# If it hasn't reached the limit and the block beneath it is water, teleport there.
execute as @e[tag=atrium_undercurrent_anchor,scores={charge=..29}] at @s if block ~ ~-1 ~ minecraft:water run tp @s ~ ~-1 ~
#
# If it hasn't reached the limit and the block beneath it isn't water, place the thing.
execute as @e[tag=atrium_undercurrent_anchor,scores={charge=..29}] at @s unless block ~ ~-1 ~ minecraft:water run function atrium:triggers/magic/spells/undercurrent_place_column
# If it reaches its range limit, stop there and place the thing.
execute as @e[tag=atrium_undercurrent_anchor,scores={charge=30..}] at @s run function atrium:triggers/magic/spells/undercurrent_place_column
#
#
#
# Placing the thing removes the entity, thus this will stop running.
execute if entity @e[tag=atrium_undercurrent_anchor] run schedule function atrium:triggers/magic/spells/undercurrent_repeat 1t
#
# Failsafe in case somehow things go bad
kill @e[tag=atrium_undercurrent_anchor,distance=60..]