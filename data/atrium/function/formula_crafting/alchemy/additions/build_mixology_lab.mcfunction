# Build sound
execute positioned ~-2 ~ ~-2 run playsound minecraft:block.vault.activate block @a[distance=..10] ~ ~ ~ 0.75 0.75 0.1
#
# Place station
execute positioned ~-2 ~ ~-2 run setblock ~ ~ ~ minecraft:decorated_pot{sherds:["minecraft:burn_pottery_sherd","minecraft:brick","minecraft:brick","minecraft:brewer_pottery_sherd"]} replace
execute positioned ~-3 ~ ~-2 run setblock ~ ~ ~ minecraft:magma_block
execute positioned ~-3 ~ ~-1 run setblock ~ ~ ~ minecraft:waxed_copper_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
execute positioned ~-4 ~ ~-2 run setblock ~ ~ ~ minecraft:waxed_copper_trapdoor[facing=west,half=bottom,open=true,powered=false,waterlogged=false]
execute positioned ~-3 ~ ~-3 run setblock ~ ~ ~ minecraft:waxed_copper_trapdoor[facing=north,half=bottom,open=true,powered=false,waterlogged=false]
execute positioned ~-3 ~1 ~-2 run setblock ~ ~ ~ minecraft:brewing_stand{CustomName:{"color":"blue","text":"Mixology Lab"}} replace