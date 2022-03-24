# Particles!
execute at @e[tag=feast_fx_timer] run particle dust_color_transition 0.051 0.149 0.027 1 0.376 0.800 0.125 ~ ~1.25 ~ 0.75 0.5 0.75 0 50 normal
#
# Sounds!
execute at @e[tag=feast_fx_timer] run playsound minecraft:entity.evoker.prepare_attack master @a[distance=..30] ~ ~ ~ 1 0.75 0.1
#
# Run for 2 seconds
execute as @e[tag=feast_fx_timer] run scoreboard players add @s misc_timer 1
execute as @e[tag=feast_fx_timer,scores={misc_timer=40..}] run tag @s remove feast_fx_timer 
execute as @e[scores={misc_timer=40..}] run scoreboard players set @s misc_timer 0
execute if entity @e[tag=feast_fx_timer] run schedule function atrium:triggers/special_abilities/fx/feast_fx 1t
