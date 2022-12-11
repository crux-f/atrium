# If the block at which this command was executed contains any Wheat crops, grow them by 1 stage.
# If the crop is already at its final stage, harvest it and replant it.
execute if block ~ ~ ~ minecraft:wheat[age=7] run setblock ~ ~ ~ minecraft:wheat[age=0] destroy
execute if block ~ ~ ~ minecraft:wheat[age=6] run setblock ~ ~ ~ minecraft:wheat[age=7] replace
execute if block ~ ~ ~ minecraft:wheat[age=5] run setblock ~ ~ ~ minecraft:wheat[age=6] replace
execute if block ~ ~ ~ minecraft:wheat[age=4] run setblock ~ ~ ~ minecraft:wheat[age=5] replace
execute if block ~ ~ ~ minecraft:wheat[age=3] run setblock ~ ~ ~ minecraft:wheat[age=4] replace
execute if block ~ ~ ~ minecraft:wheat[age=2] run setblock ~ ~ ~ minecraft:wheat[age=3] replace
execute if block ~ ~ ~ minecraft:wheat[age=1] run setblock ~ ~ ~ minecraft:wheat[age=2] replace
execute if block ~ ~ ~ minecraft:wheat[age=0] run setblock ~ ~ ~ minecraft:wheat[age=1] replace