# Particles!
particle minecraft:enchant ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.enchantment_table.use block @a[distance=..15] ~ ~ ~ 1 0.5 1
#
# Run the next part. my nice animation is being super annoying so im going to just run it all at once
function atrium:items/use/placeable_structures/runic_codex/build_runic_codex_2
#
# Stone thing starts rising up
execute positioned ~ ~ ~-8 run playsound minecraft:block.stone.place block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
setblock ~ ~ ~-7 minecraft:stone
setblock ~ ~ ~-8 minecraft:stone
setblock ~ ~ ~-9 minecraft:stone
setblock ~-1 ~ ~-7 minecraft:stone
setblock ~-1 ~ ~-8 minecraft:stone
setblock ~-1 ~ ~-9 minecraft:stone
setblock ~1 ~ ~-7 minecraft:stone
setblock ~1 ~ ~-8 minecraft:stone
setblock ~1 ~ ~-9 minecraft:stone
setblock ~-2 ~ ~-8 minecraft:stone
setblock ~2 ~ ~-8 minecraft:stone
#
# Summon the marker entity which tracks everything to do with this crafting station
summon marker ~ ~ ~ {Tags:["atrium_crafting_station","runic_codex"],CustomName:'{"text":"Runic Codex","color":"yellow","italic":false}',data:{Owner:[I;110787060,1156138790,-1514210135,238594805]}}