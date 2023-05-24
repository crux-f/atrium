# Run by the command block sequence if all runes are present in the correct order
execute at @e[distance=..30,type=minecraft:marker,nbt={data:{palace_eye_door_activator:1}}] run setblock ~ ~ ~ minecraft:redstone_block replace
#
# Runs the command block beneath the center of the eye chamber ^
#
# Remove rune sequence blocks (including this one)
# Note: remove in all directions to account for rotation
setblock ~ ~ ~ minecraft:prismarine
# X
setblock ~1 ~ ~ minecraft:prismarine
setblock ~2 ~ ~ minecraft:prismarine
setblock ~3 ~ ~ minecraft:prismarine
setblock ~-1 ~ ~ minecraft:prismarine
setblock ~-2 ~ ~ minecraft:prismarine
setblock ~-3 ~ ~ minecraft:prismarine
# Z
setblock ~ ~ ~1 minecraft:prismarine
setblock ~ ~ ~2 minecraft:prismarine
setblock ~ ~ ~3 minecraft:prismarine
setblock ~ ~ ~-1 minecraft:prismarine
setblock ~ ~ ~-2 minecraft:prismarine
setblock ~ ~ ~-3 minecraft:prismarine