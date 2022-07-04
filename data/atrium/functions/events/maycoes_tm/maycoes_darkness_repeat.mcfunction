# add 1 to the charge counter
scoreboard players add @e[tag=maycoes] maycoes 1
# IF the charge counter is 25 or less, run this again in 0.2 seconds.
execute if entity @e[scores={maycoes=..25}] run schedule function atrium:events/maycoes_tm/maycoes_darkness_repeat 0.2s
# IF the charge counter reaches 26 or higher, tag maycoes with fifth_spell.
execute if entity @e[scores={maycoes=26..}] run tag @e[tag=maycoes] add fifth_spell
# IF the charge counter reaches 26 or higher, run the SPELL RESET script.
execute if entity @e[scores={maycoes=26..}] run function atrium:events/maycoes_tm/spell_reset
# IF the charge counter reaches 26 or higher, go back to the move phase.
execute if entity @e[scores={maycoes=26..}] run function atrium:events/maycoes_tm/maycoes_resume_move
#
# PARTICLES
execute at @e[tag=maycoes_center] run particle large_smoke ^ ^ ^5 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle large_smoke ^5 ^ ^5 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle large_smoke ^-5 ^ ^5 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle large_smoke ^5 ^ ^-5 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle large_smoke ^-5 ^ ^-5 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle large_smoke ^ ^ ^-5 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle large_smoke ^5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle large_smoke ^-5 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=maycoes_center] run particle large_smoke ~ ~ ~ 20 20 20 0.1 100 normal
# Blind everyone within 30 blocks
execute at @e[tag=maycoes] run effect give @a[distance=..30,gamemode=survival] minecraft:blindness 5 0
# Regeneration = lifesteal
effect give @e[tag=maycoes] minecraft:regeneration 5 5
# bitey ground
execute at @e[tag=maycoes] run execute at @a[distance=..30,gamemode=survival] run summon evoker_fangs ~ ~ ~ {CustomNameVisible:0b,Warmup:10,Tags:["maw"],CustomName:'{"text":"Hungering Darkness","color":"dark_purple"}'}
