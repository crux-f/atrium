# Particles!
particle minecraft:portal ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.ender_chest.open block @a[distance=..15] ~ ~ ~ 1 0.75 1
#
# Run the next part. my nice animation is being super annoying so im going to just run it all at once
function atrium:items/use/placeable_structures/alchemy_cauldron/build_alchemy_cauldron_2
#
# Stone thing starts rising up
execute positioned ~ ~ ~-8 run playsound minecraft:block.stone.place block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
setblock ~ ~ ~-4 minecraft:stone
setblock ~ ~ ~-5 minecraft:stone
setblock ~ ~ ~-6 minecraft:stone
setblock ~-1 ~ ~-4 minecraft:stone
setblock ~-1 ~ ~-5 minecraft:stone
setblock ~-1 ~ ~-6 minecraft:stone
setblock ~1 ~ ~-4 minecraft:stone
setblock ~1 ~ ~-5 minecraft:stone
setblock ~1 ~ ~-6 minecraft:stone
setblock ~-2 ~ ~-5 minecraft:stone
setblock ~2 ~ ~-5 minecraft:stone
#
# Summon the marker entity which tracks everything to do with this crafting station
summon marker ~ ~ ~ {Tags:["atrium_crafting_station","alchemy_cauldron"],CustomName:'{"text":"Alchemy Cauldron","color":"yellow","italic":false}',data:{Owner:[I;110787060,1156138790,-1514210135,238594805]}}