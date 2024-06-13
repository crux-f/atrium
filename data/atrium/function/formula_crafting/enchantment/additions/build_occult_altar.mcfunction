# Particles!
particle minecraft:enchant ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
execute positioned ~ ~ ~-5 run particle minecraft:enchant ~ ~ ~ 1 0.5 1 0.1 50
#
#
# Stone sound
execute positioned ~ ~ ~-8 run playsound minecraft:block.stone.place block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
# Place the altar
execute positioned ~ ~ ~-5 run setblock ~ ~ ~ minecraft:dropper[facing=down] replace
execute positioned ~1 ~ ~-5 run setblock ~ ~ ~ minecraft:dropper[facing=down] replace
execute positioned ~-1 ~ ~-5 run setblock ~ ~ ~ minecraft:dropper[facing=down] replace
# Custom Name
execute positioned ~ ~ ~-5 if block ~ ~ ~ minecraft:dropper run data merge block ~ ~ ~ {CustomName:'{"text":"Occult Altar","color":"red","italic":false}'}
execute positioned ~1 ~ ~-5 if block ~ ~ ~ minecraft:dropper run data merge block ~ ~ ~ {CustomName:'{"text":"Occult Altar","color":"red","italic":false}'}
execute positioned ~-1 ~ ~-5 if block ~ ~ ~ minecraft:dropper run data merge block ~ ~ ~ {CustomName:'{"text":"Occult Altar","color":"red","italic":false}'}
# Decor
execute positioned ~ ~1 ~-5 run setblock ~ ~ ~ minecraft:gray_carpet replace
execute positioned ~1 ~1 ~-5 run setblock ~ ~ ~ minecraft:black_candle[candles=2,lit=true] replace
execute positioned ~-1 ~1 ~-5 run setblock ~ ~ ~ minecraft:black_candle[candles=2,lit=true] replace
#
# Add installed flag to marker entity
data merge entity @s {data:{occult_altar_installed:1}}