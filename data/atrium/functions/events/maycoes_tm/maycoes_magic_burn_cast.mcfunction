execute as @a[tag=magic_burn,level=1..9] run effect give @s minecraft:instant_damage 1 0
execute as @a[tag=magic_burn,level=10..19] run effect give @s minecraft:instant_damage 1 1
execute as @a[tag=magic_burn,level=20..29] run effect give @s minecraft:instant_damage 1 2
execute as @a[tag=magic_burn,level=30..] run effect give @s minecraft:instant_damage 1 3

# particles and sound
execute at @e[tag=magic_burn] run particle minecraft:damage_indicator ~ ~0.5 ~ 0.5 0.5 0.5 0.5 30
execute at @e[tag=magic_burn] run playsound minecraft:entity.phantom.bite master @a[distance=..10] ~ ~ ~ 1 0.1 0.1
# Remove magic_burn tags.
tag @a remove magic_burn
# Tag maycoes with third_spell.
tag @e[tag=maycoes] add third_spell
# Go back to the move phase.
function atrium:events/maycoes_tm/maycoes_resume_move
