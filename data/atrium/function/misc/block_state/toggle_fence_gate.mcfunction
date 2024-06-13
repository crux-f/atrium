# Open Gate
#
# Tag to save original state of gate
execute if block ~ ~ ~ #minecraft:fence_gates[open=false] run tag @s add toggling_gate_open
execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run tag @s add toggling_gate_closed
#
execute if entity @s[tag=toggling_gate_open] run playsound minecraft:block.fence_gate.open block @a[distance=..7] ~ ~ ~ 0.5 1 0.1
execute if entity @s[tag=toggling_gate_closed] run playsound minecraft:block.fence_gate.close block @a[distance=..7] ~ ~ ~ 0.5 1 0.1
#
# Oak (opening)
execute if block ~ ~ ~ minecraft:oak_fence_gate[facing=east] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=east,open=true]
execute if block ~ ~ ~ minecraft:oak_fence_gate[facing=north] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=north,open=true]
execute if block ~ ~ ~ minecraft:oak_fence_gate[facing=south] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=south,open=true]
execute if block ~ ~ ~ minecraft:oak_fence_gate[facing=west] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=west,open=true]
# Oak (closing)
execute if block ~ ~ ~ minecraft:oak_fence_gate[facing=east] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=east,open=false]
execute if block ~ ~ ~ minecraft:oak_fence_gate[facing=north] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=north,open=false]
execute if block ~ ~ ~ minecraft:oak_fence_gate[facing=south] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=south,open=false]
execute if block ~ ~ ~ minecraft:oak_fence_gate[facing=west] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:oak_fence_gate[facing=west,open=false]
#
# Birch (opening)
execute if block ~ ~ ~ minecraft:birch_fence_gate[facing=east] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:birch_fence_gate[facing=east,open=true]
execute if block ~ ~ ~ minecraft:birch_fence_gate[facing=north] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:birch_fence_gate[facing=north,open=true]
execute if block ~ ~ ~ minecraft:birch_fence_gate[facing=south] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:birch_fence_gate[facing=south,open=true]
execute if block ~ ~ ~ minecraft:birch_fence_gate[facing=west] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:birch_fence_gate[facing=west,open=true]
# Birch (closing)
execute if block ~ ~ ~ minecraft:birch_fence_gate[facing=east] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:birch_fence_gate[facing=east,open=false]
execute if block ~ ~ ~ minecraft:birch_fence_gate[facing=north] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:birch_fence_gate[facing=north,open=false]
execute if block ~ ~ ~ minecraft:birch_fence_gate[facing=south] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:birch_fence_gate[facing=south,open=false]
execute if block ~ ~ ~ minecraft:birch_fence_gate[facing=west] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:birch_fence_gate[facing=west,open=false]
#
# Spruce (opening)
execute if block ~ ~ ~ minecraft:spruce_fence_gate[facing=east] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:spruce_fence_gate[facing=east,open=true]
execute if block ~ ~ ~ minecraft:spruce_fence_gate[facing=north] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:spruce_fence_gate[facing=north,open=true]
execute if block ~ ~ ~ minecraft:spruce_fence_gate[facing=south] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:spruce_fence_gate[facing=south,open=true]
execute if block ~ ~ ~ minecraft:spruce_fence_gate[facing=west] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:spruce_fence_gate[facing=west,open=true]
# Spruce (closing)
execute if block ~ ~ ~ minecraft:spruce_fence_gate[facing=east] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:spruce_fence_gate[facing=east,open=false]
execute if block ~ ~ ~ minecraft:spruce_fence_gate[facing=north] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:spruce_fence_gate[facing=north,open=false]
execute if block ~ ~ ~ minecraft:spruce_fence_gate[facing=south] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:spruce_fence_gate[facing=south,open=false]
execute if block ~ ~ ~ minecraft:spruce_fence_gate[facing=west] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:spruce_fence_gate[facing=west,open=false]
#
# Jungle (opening)
execute if block ~ ~ ~ minecraft:jungle_fence_gate[facing=east] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:jungle_fence_gate[facing=east,open=true]
execute if block ~ ~ ~ minecraft:jungle_fence_gate[facing=north] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:jungle_fence_gate[facing=north,open=true]
execute if block ~ ~ ~ minecraft:jungle_fence_gate[facing=south] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:jungle_fence_gate[facing=south,open=true]
execute if block ~ ~ ~ minecraft:jungle_fence_gate[facing=west] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:jungle_fence_gate[facing=west,open=true]
# Jungle (closing)
execute if block ~ ~ ~ minecraft:jungle_fence_gate[facing=east] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:jungle_fence_gate[facing=east,open=false]
execute if block ~ ~ ~ minecraft:jungle_fence_gate[facing=north] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:jungle_fence_gate[facing=north,open=false]
execute if block ~ ~ ~ minecraft:jungle_fence_gate[facing=south] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:jungle_fence_gate[facing=south,open=false]
execute if block ~ ~ ~ minecraft:jungle_fence_gate[facing=west] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:jungle_fence_gate[facing=west,open=false]
#
# Dark Oak (opening)
execute if block ~ ~ ~ minecraft:dark_oak_fence_gate[facing=east] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:dark_oak_fence_gate[facing=east,open=true]
execute if block ~ ~ ~ minecraft:dark_oak_fence_gate[facing=north] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:dark_oak_fence_gate[facing=north,open=true]
execute if block ~ ~ ~ minecraft:dark_oak_fence_gate[facing=south] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:dark_oak_fence_gate[facing=south,open=true]
execute if block ~ ~ ~ minecraft:dark_oak_fence_gate[facing=west] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:dark_oak_fence_gate[facing=west,open=true]
# Dark Oak (closing)
execute if block ~ ~ ~ minecraft:dark_oak_fence_gate[facing=east] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:dark_oak_fence_gate[facing=east,open=false]
execute if block ~ ~ ~ minecraft:dark_oak_fence_gate[facing=north] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:dark_oak_fence_gate[facing=north,open=false]
execute if block ~ ~ ~ minecraft:dark_oak_fence_gate[facing=south] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:dark_oak_fence_gate[facing=south,open=false]
execute if block ~ ~ ~ minecraft:dark_oak_fence_gate[facing=west] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:dark_oak_fence_gate[facing=west,open=false]
#
# Acacia (opening)
execute if block ~ ~ ~ minecraft:acacia_fence_gate[facing=east] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:acacia_fence_gate[facing=east,open=true]
execute if block ~ ~ ~ minecraft:acacia_fence_gate[facing=north] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:acacia_fence_gate[facing=north,open=true]
execute if block ~ ~ ~ minecraft:acacia_fence_gate[facing=south] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:acacia_fence_gate[facing=south,open=true]
execute if block ~ ~ ~ minecraft:acacia_fence_gate[facing=west] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:acacia_fence_gate[facing=west,open=true]
# Acacia (closing)
execute if block ~ ~ ~ minecraft:acacia_fence_gate[facing=east] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:acacia_fence_gate[facing=east,open=false]
execute if block ~ ~ ~ minecraft:acacia_fence_gate[facing=north] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:acacia_fence_gate[facing=north,open=false]
execute if block ~ ~ ~ minecraft:acacia_fence_gate[facing=south] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:acacia_fence_gate[facing=south,open=false]
execute if block ~ ~ ~ minecraft:acacia_fence_gate[facing=west] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:acacia_fence_gate[facing=west,open=false]
#
# Mangrove (opening)
execute if block ~ ~ ~ minecraft:mangrove_fence_gate[facing=east] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:mangrove_fence_gate[facing=east,open=true]
execute if block ~ ~ ~ minecraft:mangrove_fence_gate[facing=north] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:mangrove_fence_gate[facing=north,open=true]
execute if block ~ ~ ~ minecraft:mangrove_fence_gate[facing=south] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:mangrove_fence_gate[facing=south,open=true]
execute if block ~ ~ ~ minecraft:mangrove_fence_gate[facing=west] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:mangrove_fence_gate[facing=west,open=true]
# Mangrove (closing)
execute if block ~ ~ ~ minecraft:mangrove_fence_gate[facing=east] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:mangrove_fence_gate[facing=east,open=false]
execute if block ~ ~ ~ minecraft:mangrove_fence_gate[facing=north] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:mangrove_fence_gate[facing=north,open=false]
execute if block ~ ~ ~ minecraft:mangrove_fence_gate[facing=south] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:mangrove_fence_gate[facing=south,open=false]
execute if block ~ ~ ~ minecraft:mangrove_fence_gate[facing=west] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:mangrove_fence_gate[facing=west,open=false]
#
# Crimson (opening)
execute if block ~ ~ ~ minecraft:crimson_fence_gate[facing=east] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=east,open=true]
execute if block ~ ~ ~ minecraft:crimson_fence_gate[facing=north] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=north,open=true]
execute if block ~ ~ ~ minecraft:crimson_fence_gate[facing=south] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=south,open=true]
execute if block ~ ~ ~ minecraft:crimson_fence_gate[facing=west] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=west,open=true]
# Crimson (closing)
execute if block ~ ~ ~ minecraft:crimson_fence_gate[facing=east] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=east,open=false]
execute if block ~ ~ ~ minecraft:crimson_fence_gate[facing=north] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=north,open=false]
execute if block ~ ~ ~ minecraft:crimson_fence_gate[facing=south] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=south,open=false]
execute if block ~ ~ ~ minecraft:crimson_fence_gate[facing=west] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:crimson_fence_gate[facing=west,open=false]
#
# Warped (opening)
execute if block ~ ~ ~ minecraft:warped_fence_gate[facing=east] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=east,open=true]
execute if block ~ ~ ~ minecraft:warped_fence_gate[facing=north] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=north,open=true]
execute if block ~ ~ ~ minecraft:warped_fence_gate[facing=south] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=south,open=true]
execute if block ~ ~ ~ minecraft:warped_fence_gate[facing=west] if entity @s[tag=toggling_gate_open] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=west,open=true]
# Warped (closing)
execute if block ~ ~ ~ minecraft:warped_fence_gate[facing=east] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=east,open=false]
execute if block ~ ~ ~ minecraft:warped_fence_gate[facing=north] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=north,open=false]
execute if block ~ ~ ~ minecraft:warped_fence_gate[facing=south] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=south,open=false]
execute if block ~ ~ ~ minecraft:warped_fence_gate[facing=west] if entity @s[tag=toggling_gate_closed] run setblock ~ ~ ~ minecraft:warped_fence_gate[facing=west,open=false]
#
#
#
tag @s remove toggling_gate_open
tag @s remove toggling_gate_closed
