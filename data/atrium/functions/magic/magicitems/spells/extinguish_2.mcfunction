execute as @a[predicate=atrium:extinguish_2_req] at @s anchored eyes run particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0.1 100
execute as @a[predicate=atrium:extinguish_2_req] at @s anchored eyes positioned ~ ~1 ~ run execute at @e[distance=..10,predicate=atrium:extinguish_target] run setblock ~ ~ ~ water[level=1]
execute as @a[predicate=atrium:extinguish_2_req] at @s run playsound minecraft:entity.player.splash player @a[distance=..30] ~ ~ ~ 1 0.6 0.1
tag @a[predicate=atrium:extinguish_2_req] add extinguish_caster
clear @a[tag=extinguish_caster] minecraft:glowstone_dust 1
scoreboard players set @a[tag=extinguish_caster] waterstaff 0
tag @a[tag=extinguish_caster] remove extinguish_caster
