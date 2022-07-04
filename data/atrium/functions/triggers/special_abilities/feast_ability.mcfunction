# Triggers when an evoker with the tag hurts a player with its fang spell
#
# Gives each evoker with the tag within 50 blocks instant health 1
effect give @e[tag=feast_ability,distance=..50] minecraft:instant_health 1 0 true
#
# Particles!
execute at @s at @e[tag=feast_ability,distance=..50] run particle dust_color_transition 0.051 0.149 0.027 1 0.376 0.800 0.125 ~ ~1.25 ~ 0.5 0.5 0.5 0.5 50 normal
#
# Increase the charge count by 1 on the rune counter entity
execute at @s at @e[tag=feast_ability,distance=..50] as @e[distance=..2,tag=rune_counter] run scoreboard players add @s charge 1
#
# Add 1 rune each time a charge is gained (all removed in feast_unleash) and run feast_unleash when all letters are present
execute at @s at @e[tag=feast_ability,distance=..50] as @e[distance=..2,tag=rune_counter,scores={charge=1}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"F","font":"minecraft:illageralt","color":"#0B3B0D","italic":false}'}
#
execute at @s at @e[tag=feast_ability,distance=..50] as @e[distance=..2,tag=rune_counter,scores={charge=2}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"F","font":"minecraft:illageralt","color":"#0B3B0D","italic":false},{"text":"E","color":"#115914"}]'}
#
execute at @s at @e[tag=feast_ability,distance=..50] as @e[distance=..2,tag=rune_counter,scores={charge=3}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"F","font":"minecraft:illageralt","color":"#0B3B0D","italic":false},{"text":"E","color":"#115914"},{"text":"A","color":"#16751A"}]'}
#
execute at @s at @e[tag=feast_ability,distance=..50] as @e[distance=..2,tag=rune_counter,scores={charge=4}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"F","font":"minecraft:illageralt","color":"#0B3B0D","italic":false},{"text":"E","color":"#115914"},{"text":"A","color":"#16751A"},{"text":"S","color":"#1E9E23"}]'}
#
execute at @s at @e[tag=feast_ability,distance=..50] as @e[distance=..2,tag=rune_counter,scores={charge=5}] run data merge entity @s {CustomNameVisible:1b,CustomName:'[{"text":"F","font":"minecraft:illageralt","color":"#0B3B0D","italic":false},{"text":"E","color":"#115914"},{"text":"A","color":"#16751A"},{"text":"S","color":"#1E9E23"},{"text":"T","color":"#2BE032"}]'}
#
execute at @s as @e[tag=feast_ability,distance=..50] at @s if entity @e[distance=..2,tag=rune_counter,scores={charge=5..}] run function atrium:triggers/special_abilities/feast_unleash
#
# Revoke advancement to allow for re-trigger
advancement revoke @s only atrium:triggers/special_abilities/feast_ability
