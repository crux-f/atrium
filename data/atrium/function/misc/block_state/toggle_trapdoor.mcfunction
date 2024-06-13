# Open Gate
#
# Tag to save original state of trapdoor
execute if block ~ ~ ~ #minecraft:trapdoors[open=false] run tag @s add toggling_trapdoor_open
execute if block ~ ~ ~ #minecraft:trapdoors[open=true] run tag @s add toggling_trapdoor_closed
#
execute if entity @s[tag=toggling_trapdoor_open] run playsound minecraft:block.wooden_trapdoor.open block @a[distance=..7] ~ ~ ~ 0.5 1 0.1
execute if entity @s[tag=toggling_trapdoor_closed] run playsound minecraft:block.wooden_trapdoor.close block @a[distance=..7] ~ ~ ~ 0.5 1 0.1
#
# Oak, half on bottom (opening)
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=east,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=west,half=bottom,open=true]
# Oak, half on bottom (closing)
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=east,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=south,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=west,half=bottom,open=false]
# Oak, half on top (opening)
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=east,half=top,open=true]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=north,half=top,open=true]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=south,half=top,open=true]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=west,half=top,open=true]
# Oak, half on top (closing)
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=east,half=top,open=false]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=south,half=top,open=false]
execute if block ~ ~ ~ minecraft:oak_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:oak_trapdoor[facing=west,half=top,open=false]
#
# Birch, half on bottom (opening)
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=east,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=west,half=bottom,open=true]
# Birch, half on bottom (closing)
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=east,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=south,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=west,half=bottom,open=false]
# Birch, half on top (opening)
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=east,half=top,open=true]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=north,half=top,open=true]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=south,half=top,open=true]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=west,half=top,open=true]
# Birch, half on top (closing)
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=east,half=top,open=false]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=south,half=top,open=false]
execute if block ~ ~ ~ minecraft:birch_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:birch_trapdoor[facing=west,half=top,open=false]
#
# Spruce, half on bottom (opening)
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=east,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=west,half=bottom,open=true]
# Spruce, half on bottom (closing)
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=east,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=south,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=west,half=bottom,open=false]
# Spruce, half on top (opening)
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=east,half=top,open=true]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=north,half=top,open=true]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=south,half=top,open=true]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=west,half=top,open=true]
# Spruce, half on top (closing)
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=east,half=top,open=false]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=south,half=top,open=false]
execute if block ~ ~ ~ minecraft:spruce_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:spruce_trapdoor[facing=west,half=top,open=false]
#
# Jungle, half on bottom (opening)
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=east,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=west,half=bottom,open=true]
# Jungle, half on bottom (closing)
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=east,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=south,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=west,half=bottom,open=false]
# Jungle, half on top (opening)
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=east,half=top,open=true]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=north,half=top,open=true]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=south,half=top,open=true]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=west,half=top,open=true]
# Jungle, half on top (closing)
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=east,half=top,open=false]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=south,half=top,open=false]
execute if block ~ ~ ~ minecraft:jungle_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:jungle_trapdoor[facing=west,half=top,open=false]
#
# Dark Oak, half on bottom (opening)
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=east,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=west,half=bottom,open=true]
# Dark Oak, half on bottom (closing)
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=east,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=south,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=west,half=bottom,open=false]
# Dark Oak, half on top (opening)
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=east,half=top,open=true]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=north,half=top,open=true]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=south,half=top,open=true]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=west,half=top,open=true]
# Dark Oak, half on top (closing)
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=east,half=top,open=false]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=south,half=top,open=false]
execute if block ~ ~ ~ minecraft:dark_oak_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:dark_oak_trapdoor[facing=west,half=top,open=false]
#
# Acacia, half on bottom (opening)
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=east,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=west,half=bottom,open=true]
# Acacia, half on bottom (closing)
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=east,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=south,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=west,half=bottom,open=false]
# Acacia, half on top (opening)
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=east,half=top,open=true]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=north,half=top,open=true]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=south,half=top,open=true]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=west,half=top,open=true]
# Acacia, half on top (closing)
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=east,half=top,open=false]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=south,half=top,open=false]
execute if block ~ ~ ~ minecraft:acacia_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:acacia_trapdoor[facing=west,half=top,open=false]
#
# Mangrove, half on bottom (opening)
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=east,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=west,half=bottom,open=true]
# Mangrove, half on bottom (closing)
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=east,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=south,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=west,half=bottom,open=false]
# Mangrove, half on top (opening)
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=east,half=top,open=true]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=north,half=top,open=true]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=south,half=top,open=true]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=west,half=top,open=true]
# Mangrove, half on top (closing)
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=east,half=top,open=false]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=south,half=top,open=false]
execute if block ~ ~ ~ minecraft:mangrove_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:mangrove_trapdoor[facing=west,half=top,open=false]
#
# Crimson, half on bottom (opening)
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=east,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=west,half=bottom,open=true]
# Crimson, half on bottom (closing)
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=east,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=south,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=west,half=bottom,open=false]
# Crimson, half on top (opening)
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=east,half=top,open=true]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=north,half=top,open=true]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=south,half=top,open=true]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=west,half=top,open=true]
# Crimson, half on top (closing)
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=east,half=top,open=false]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=south,half=top,open=false]
execute if block ~ ~ ~ minecraft:crimson_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:crimson_trapdoor[facing=west,half=top,open=false]
#
# Warped, half on bottom (opening)
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=east,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=north,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=south,half=bottom,open=true]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=west,half=bottom,open=true]
# Warped, half on bottom (closing)
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=east,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=east,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=north,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=north,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=south,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=south,half=bottom,open=false]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=west,half=bottom] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=west,half=bottom,open=false]
# Warped, half on top (opening)
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=east,half=top,open=true]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=north,half=top,open=true]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=south,half=top,open=true]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_open] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=west,half=top,open=true]
# Warped, half on top (closing)
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=east,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=east,half=top,open=false]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=north,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=north,half=top,open=false]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=south,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=south,half=top,open=false]
execute if block ~ ~ ~ minecraft:warped_trapdoor[facing=west,half=top] if entity @s[tag=toggling_trapdoor_closed] run setblock ~ ~ ~ minecraft:warped_trapdoor[facing=west,half=top,open=false]
#
#
tag @s remove toggling_trapdoor_open
tag @s remove toggling_trapdoor_closed
