# Run beneath the exact center of the eye chamber by a command block
#
# Sound effect
playsound minecraft:item.trident.thunder block @a[distance=..30] ~ ~ ~ 1 0.15 0.1
#
# Remove the command block that ran this command
#
setblock ~ ~ ~ minecraft:prismarine
# Remove the redstone block that was created by eye_door_relay
# (all directions to account for rotation)
setblock ~1 ~ ~ minecraft:prismarine
setblock ~-1 ~ ~ minecraft:prismarine
setblock ~ ~ ~1 minecraft:prismarine
setblock ~ ~ ~-1 minecraft:prismarine
#
# Smash the glass doors to the eye chamber
#
# NORTH door
setblock ~ ~2 ~-9 minecraft:water
setblock ~ ~3 ~-9 minecraft:water
setblock ~ ~4 ~-9 minecraft:water
#
setblock ~1 ~2 ~-9 minecraft:water
setblock ~1 ~3 ~-9 minecraft:water
setblock ~1 ~4 ~-9 minecraft:water
#
setblock ~-1 ~2 ~-9 minecraft:water
setblock ~-1 ~3 ~-9 minecraft:water
setblock ~-1 ~4 ~-9 minecraft:water
#
setblock ~2 ~2 ~-9 minecraft:water
setblock ~2 ~3 ~-9 minecraft:water
#
setblock ~-2 ~2 ~-9 minecraft:water
setblock ~-2 ~3 ~-9 minecraft:water
#
# SOUTH door
setblock ~ ~2 ~9 minecraft:water
setblock ~ ~3 ~9 minecraft:water
setblock ~ ~4 ~9 minecraft:water
#
setblock ~1 ~2 ~9 minecraft:water
setblock ~1 ~3 ~9 minecraft:water
setblock ~1 ~4 ~9 minecraft:water
#
setblock ~-1 ~2 ~9 minecraft:water
setblock ~-1 ~3 ~9 minecraft:water
setblock ~-1 ~4 ~9 minecraft:water
#
setblock ~2 ~2 ~9 minecraft:water
setblock ~2 ~3 ~9 minecraft:water
#
setblock ~-2 ~2 ~9 minecraft:water
setblock ~-2 ~3 ~9 minecraft:water
#
# EAST door
setblock ~9 ~2 ~ minecraft:water
setblock ~9 ~3 ~ minecraft:water
setblock ~9 ~4 ~ minecraft:water
#
setblock ~9 ~2 ~1 minecraft:water
setblock ~9 ~3 ~1 minecraft:water
setblock ~9 ~4 ~1 minecraft:water
#
setblock ~9 ~2 ~-1 minecraft:water
setblock ~9 ~3 ~-1 minecraft:water
setblock ~9 ~4 ~-1 minecraft:water
#
setblock ~9 ~2 ~2 minecraft:water
setblock ~9 ~3 ~2 minecraft:water
#
setblock ~9 ~2 ~-2 minecraft:water
setblock ~9 ~3 ~-2 minecraft:water
#
# WEST door
setblock ~-9 ~2 ~ minecraft:water
setblock ~-9 ~3 ~ minecraft:water
setblock ~-9 ~4 ~ minecraft:water
#
setblock ~-9 ~2 ~1 minecraft:water
setblock ~-9 ~3 ~1 minecraft:water
setblock ~-9 ~4 ~1 minecraft:water
#
setblock ~-9 ~2 ~-1 minecraft:water
setblock ~-9 ~3 ~-1 minecraft:water
setblock ~-9 ~4 ~-1 minecraft:water
#
setblock ~-9 ~2 ~2 minecraft:water
setblock ~-9 ~3 ~2 minecraft:water
#
setblock ~-9 ~2 ~-2 minecraft:water
setblock ~-9 ~3 ~-2 minecraft:water
#
# Finally, kill the marker entity
kill @e[type=minecraft:marker,nbt={data:{palace_eye_door_activator:1}},distance=..3]