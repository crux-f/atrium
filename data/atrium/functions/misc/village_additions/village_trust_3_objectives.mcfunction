# Change banners to green
setblock ~1 ~7 ~ minecraft:green_wall_banner[facing=east]
particle minecraft:happy_villager ~1 ~7 ~ 0.25 0.5 0.25 0 25 normal
setblock ~-1 ~7 ~ minecraft:green_wall_banner[facing=west]
particle minecraft:happy_villager ~-1 ~7 ~ 0.25 0.5 0.25 0 25 normal
setblock ~ ~7 ~1 minecraft:green_wall_banner[facing=south]
particle minecraft:happy_villager ~ ~7 ~1 0.25 0.5 0.25 0 25 normal
setblock ~ ~7 ~-1 minecraft:green_wall_banner[facing=north]
particle minecraft:happy_villager ~ ~7 ~-1 0.25 0.5 0.25 0 25 normal
# Remove all command blocks
setblock ~ ~4 ~ minecraft:stone
setblock ~ ~3 ~ minecraft:stone
setblock ~ ~2 ~ minecraft:stone
setblock ~ ~1 ~ minecraft:stone
setblock ~ ~ ~ minecraft:stone
setblock ~ ~-1 ~ minecraft:stone
# :)
tellraw @a[distance=..25] {"text":"You have earned the people's trust.","color":"dark_green"}

