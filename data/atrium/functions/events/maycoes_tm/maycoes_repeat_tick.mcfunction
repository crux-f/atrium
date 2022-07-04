# IMMUNITIES
# Punch Immunity - Teleport Maycoes to maycoes_marker every tick (this makes him functionally immune to the Punch enchantment).
tp @e[tag=maycoes] @e[tag=maycoes_marker,limit=1]
# Fire Immunity - If Maycoes has already made his firespeech (see maycoes_repeat_2s), make sure he's not on fire ever. Would use fire resistance, but the fire still makes him visible.
execute if entity @e[tag=maycoes_firespeech] run data merge entity @e[tag=maycoes,limit=1] {Fire:-20}
# Wither Immunity - remove wither every tick
effect clear @e[tag=maycoes] minecraft:wither
# UNLESS Maycoes is alive, kill the maycoes_marker.
execute unless entity @e[tag=maycoes] run kill @e[tag=maycoes_marker]
# Boss Bar code.
execute if entity @e[tag=maycoes] store result bossbar atrium:maycoes value run data get entity @e[tag=maycoes,limit=1] Health 1
execute as @e[tag=maycoes] at @s run bossbar set atrium:maycoes players @a[distance=..100]
execute unless entity @e[tag=maycoes] run bossbar set atrium:maycoes players
# Warning particles for the maw attack.
execute at @e[tag=maw] run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 0 10 normal
# If Maycoes is alive, schedule this function to run in 1 tick.
execute if entity @e[tag=maycoes] run schedule function atrium:events/maycoes_tm/maycoes_repeat_tick 1t

