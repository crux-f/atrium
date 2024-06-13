# If the block at which this command was executed contains any potatoes crops, grow them by 1 stage.
# If the crop is already at its final stage, harvest it and replant it.
execute if block ~ ~ ~ minecraft:potatoes[age=7] run setblock ~ ~ ~ minecraft:potatoes[age=0] destroy
execute if block ~ ~ ~ minecraft:potatoes[age=6] run setblock ~ ~ ~ minecraft:potatoes[age=7] replace
execute if block ~ ~ ~ minecraft:potatoes[age=5] run setblock ~ ~ ~ minecraft:potatoes[age=6] replace
execute if block ~ ~ ~ minecraft:potatoes[age=4] run setblock ~ ~ ~ minecraft:potatoes[age=5] replace
execute if block ~ ~ ~ minecraft:potatoes[age=3] run setblock ~ ~ ~ minecraft:potatoes[age=4] replace
execute if block ~ ~ ~ minecraft:potatoes[age=2] run setblock ~ ~ ~ minecraft:potatoes[age=3] replace
execute if block ~ ~ ~ minecraft:potatoes[age=1] run setblock ~ ~ ~ minecraft:potatoes[age=2] replace
execute if block ~ ~ ~ minecraft:potatoes[age=0] run setblock ~ ~ ~ minecraft:potatoes[age=1] replace