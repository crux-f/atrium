# Sfx!
playsound minecraft:entity.item_frame.place block @a[distance=..15] ~ ~ ~ 0.5 0.1 0.1
#
# CENTER NORTH
execute positioned ~ ~ ~-2 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~ ~ ~-2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER EAST
execute positioned ~2 ~ ~ run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER SOUTH
execute positioned ~ ~ ~2 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~ ~ ~2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER WEST
execute positioned ~-2 ~ ~ run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"],Item:{}}
execute positioned ~-2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
# Run the next part
function atrium:items/use/placeable_structures/alchemy_cauldron/build_alchemy_cauldron_3
#
# More Stone thing
execute positioned ~ ~ ~-8 run playsound minecraft:block.stone.place block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
setblock ~ ~1 ~-3 minecraft:stone_button[facing=south]
setblock ~ ~1 ~-4 minecraft:chiseled_stone_bricks
setblock ~ ~1 ~-5 command_block[conditional=false,facing=south]{Command:"/function atrium:formula_crafting/alchemy/activate_alchemy_cauldron",auto:0b,CustomName:'{"text":"Alchemy Cauldron","color":"yellow","italic":false}'} replace
setblock ~ ~1 ~-6 minecraft:stone
setblock ~-1 ~1 ~-4 minecraft:stone
setblock ~-1 ~1 ~-5 minecraft:stone
setblock ~1 ~1 ~-4 minecraft:stone
setblock ~1 ~1 ~-5 minecraft:stone
setblock ~-2 ~1 ~-5 minecraft:stone
setblock ~2 ~1 ~-5 minecraft:stone