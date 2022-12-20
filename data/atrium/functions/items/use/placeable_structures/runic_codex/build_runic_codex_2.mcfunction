# Sfx!
playsound minecraft:entity.item_frame.place block @a[distance=..15] ~ ~ ~ 0.5 0.1 0.1
#
# Run the next part
function atrium:items/use/placeable_structures/runic_codex/build_runic_codex_3
#
# More Stone thing
execute positioned ~ ~ ~-8 run playsound minecraft:block.stone.place block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
setblock ~ ~1 ~-6 minecraft:stone_button[facing=south]
setblock ~ ~1 ~-7 minecraft:chiseled_stone_bricks
setblock ~ ~1 ~-8 command_block[conditional=false,facing=south]{Command:"/function atrium:formula_crafting/enchantment/activate_runic_codex",auto:0b,CustomName:'{"text":"Runic Codex","color":"yellow","italic":false}'} replace
setblock ~ ~1 ~-9 minecraft:stone
setblock ~-1 ~1 ~-7 minecraft:stone
setblock ~-1 ~1 ~-8 minecraft:stone
setblock ~1 ~1 ~-7 minecraft:stone
setblock ~1 ~1 ~-8 minecraft:stone
setblock ~-2 ~1 ~8 minecraft:stone
setblock ~2 ~1 ~8 minecraft:stone