# If the block at which this command was executed contains any beetroots crops, grow them by 1 stage.
# If the crop is already at its final stage, harvest it and replant it.
execute if block ~ ~ ~ minecraft:beetroots[age=3] run setblock ~ ~ ~ minecraft:beetroots[age=0] destroy
execute if block ~ ~ ~ minecraft:beetroots[age=2] run setblock ~ ~ ~ minecraft:beetroots[age=3] replace
execute if block ~ ~ ~ minecraft:beetroots[age=1] run setblock ~ ~ ~ minecraft:beetroots[age=2] replace
execute if block ~ ~ ~ minecraft:beetroots[age=0] run setblock ~ ~ ~ minecraft:beetroots[age=1] replace