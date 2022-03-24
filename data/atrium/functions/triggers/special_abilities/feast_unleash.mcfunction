# Reset rune counter display
execute as @e[distance=..2,tag=rune_counter] run data merge entity @s {CustomNameVisible:0b,CustomName:'{"text":" ","font":"minecraft:illageralt","italic":false}'}
# Reset charge level
execute as @e[distance=..2,tag=rune_counter] run scoreboard players set @s charge 0
#
# FIRST ROUND
#
# Summon 8 feast fangs with a 0.25 second warmup in first ring around caster (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-1.5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:5,Tags:["feast_fang"]}
execute positioned ~1 ~ ~-1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:5,Tags:["feast_fang"]}
execute positioned ~1.5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:5,Tags:["feast_fang"]}
execute positioned ~1 ~ ~1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:5,Tags:["feast_fang"]}
execute positioned ~ ~ ~1.5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:5,Tags:["feast_fang"]}
execute positioned ~-1 ~ ~1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:5,Tags:["feast_fang"]}
execute positioned ~-1.5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:5,Tags:["feast_fang"]}
execute positioned ~-1 ~ ~-1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:5,Tags:["feast_fang"]}
#
# Summon 8 feast fangs with a 0.5 second warmup in second ring around caster (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-3 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:10,Tags:["feast_fang"]}
execute positioned ~2 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:10,Tags:["feast_fang"]}
execute positioned ~3 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:10,Tags:["feast_fang"]}
execute positioned ~2 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:10,Tags:["feast_fang"]}
execute positioned ~ ~ ~3 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:10,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:10,Tags:["feast_fang"]}
execute positioned ~-3 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:10,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:10,Tags:["feast_fang"]}
#
# Summon 12 feast fangs with a 0.75 second warmup in third ring (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~2 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~4 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~4 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~2 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~ ~ ~5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~-5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:15,Tags:["feast_fang"]}
#
# Summon 16 feast fangs with a 1 second warmup in fourth ring (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-7 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~4 ~ ~-6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~4 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~6 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~7 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~6 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~4 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~4 ~ ~6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~ ~ ~7 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~-6 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~-7 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~-6 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~-6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:20,Tags:["feast_fang"]}
#
# SECOND ROUND
#
# Summon 8 feast fangs with a 1.25 second warmup in first ring around caster (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-1.5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:25,Tags:["feast_fang"]}
execute positioned ~1 ~ ~-1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:25,Tags:["feast_fang"]}
execute positioned ~1.5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:25,Tags:["feast_fang"]}
execute positioned ~1 ~ ~1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:25,Tags:["feast_fang"]}
execute positioned ~ ~ ~1.5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:25,Tags:["feast_fang"]}
execute positioned ~-1 ~ ~1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:25,Tags:["feast_fang"]}
execute positioned ~-1.5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:25,Tags:["feast_fang"]}
execute positioned ~-1 ~ ~-1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:25,Tags:["feast_fang"]}
#
# Summon 8 feast fangs with a 1.5 second warmup in second ring around caster (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-3 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:30,Tags:["feast_fang"]}
execute positioned ~2 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:30,Tags:["feast_fang"]}
execute positioned ~3 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:30,Tags:["feast_fang"]}
execute positioned ~2 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:30,Tags:["feast_fang"]}
execute positioned ~ ~ ~3 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:30,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:30,Tags:["feast_fang"]}
execute positioned ~-3 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:30,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:30,Tags:["feast_fang"]}
#
# Summon 12 feast fangs with a 1.75 second warmup in third ring (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~2 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~4 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~4 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~2 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~ ~ ~5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~-5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:35,Tags:["feast_fang"]}
#
# Summon 16 feast fangs with a 2 second warmup in fourth ring (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-7 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~4 ~ ~-6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~4 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~6 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~7 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~6 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~4 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~4 ~ ~6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~ ~ ~7 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~-6 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~-7 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~-6 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~-6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:40,Tags:["feast_fang"]}
#
# THIRD ROUND
#
# Summon 8 feast fangs with a 2.25 second warmup in first ring around caster (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-1.5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:45,Tags:["feast_fang"]}
execute positioned ~1 ~ ~-1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:45,Tags:["feast_fang"]}
execute positioned ~1.5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:45,Tags:["feast_fang"]}
execute positioned ~1 ~ ~1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:45,Tags:["feast_fang"]}
execute positioned ~ ~ ~1.5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:45,Tags:["feast_fang"]}
execute positioned ~-1 ~ ~1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:45,Tags:["feast_fang"]}
execute positioned ~-1.5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:45,Tags:["feast_fang"]}
execute positioned ~-1 ~ ~-1 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:45,Tags:["feast_fang"]}
#
# Summon 8 feast fangs with a 2.5 second warmup in second ring around caster (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-3 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:50,Tags:["feast_fang"]}
execute positioned ~2 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:50,Tags:["feast_fang"]}
execute positioned ~3 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:50,Tags:["feast_fang"]}
execute positioned ~2 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:50,Tags:["feast_fang"]}
execute positioned ~ ~ ~3 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:50,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:50,Tags:["feast_fang"]}
execute positioned ~-3 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:50,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:50,Tags:["feast_fang"]}
#
# Summon 12 feast fangs with a 2.75 second warmup in third ring (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~2 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~4 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~4 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~2 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~ ~ ~5 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~-5 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~-2 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
execute positioned ~-2 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:55,Tags:["feast_fang"]}
#
# Summon 16 feast fangs with a 3 second warmup in fourth ring (summoned clockwise; only summons if there is a supporting block)
execute positioned ~ ~ ~-7 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~4 ~ ~-6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~4 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~6 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~7 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~6 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~4 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~4 ~ ~6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~ ~ ~7 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~-6 ~ ~4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~-7 ~ ~ unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~-6 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~-4 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
execute positioned ~-4 ~ ~-6 unless block ~ ~-1 ~ minecraft:air run summon evoker_fangs ~ ~ ~ {Warmup:60,Tags:["feast_fang"]}
#
# Set all of the fangs to be owned by the caster
execute as @e[distance=..30,tag=feast_fang] run data modify entity @s Owner set from entity @e[limit=1,tag=feast_ability,distance=..30] UUID
#
# SFX / VFX
tag @s add feast_fx_timer
function atrium:triggers/special_abilities/fx/feast_fx
