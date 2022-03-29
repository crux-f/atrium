# Change banners to green
setblock ~1 ~16 ~ minecraft:green_wall_banner[facing=east]
particle minecraft:happy_villager ~1 ~16 ~ 0.25 0.5 0.25 0 25 normal
setblock ~-1 ~16 ~ minecraft:green_wall_banner[facing=west]
particle minecraft:happy_villager ~-1 ~16 ~ 0.25 0.5 0.25 0 25 normal
setblock ~ ~16 ~1 minecraft:green_wall_banner[facing=south]
particle minecraft:happy_villager ~ ~16 ~1 0.25 0.5 0.25 0 25 normal
setblock ~ ~16 ~-1 minecraft:green_wall_banner[facing=north]
particle minecraft:happy_villager ~ ~16 ~-1 0.25 0.5 0.25 0 25 normal
# Remove all command blocks except top block for flavor text
setblock ~ ~12 ~ minecraft:stone
setblock ~ ~11 ~ minecraft:stone
setblock ~ ~10 ~ minecraft:stone
setblock ~ ~9 ~ minecraft:stone
setblock ~ ~8 ~ minecraft:stone
setblock ~ ~7 ~ minecraft:stone
setblock ~ ~6 ~ minecraft:stone
setblock ~ ~5 ~ minecraft:stone
setblock ~ ~4 ~ minecraft:stone
setblock ~ ~3 ~ minecraft:stone
setblock ~ ~2 ~ minecraft:stone
setblock ~ ~1 ~ minecraft:stone
setblock ~ ~ ~ minecraft:stone
# :)
tellraw @a[distance=..25] {"text":"You have earned the people's trust.","color":"dark_green"}
