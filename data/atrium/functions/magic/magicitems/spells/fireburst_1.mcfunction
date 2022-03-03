execute as @a[predicate=atrium:fireburst_1_req] at @s anchored eyes run particle minecraft:flame ^ ^ ^3 1 1 1 0.1 200
execute as @a[predicate=atrium:fireburst_1_req] at @s anchored eyes run particle minecraft:smoke ^ ^ ^3 1 1 1 0.1 100
execute as @a[predicate=atrium:fireburst_1_req] at @s anchored eyes positioned ^ ^ ^3 run execute at @e[distance=..2.9] run summon small_fireball ~ ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute as @a[predicate=atrium:fireburst_1_req] at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..30] ~ ~ ~ 1 0.6 1
tag @a[predicate=atrium:fireburst_1_req] add fireburst_caster
clear @a[tag=fireburst_caster] minecraft:glowstone_dust 1
scoreboard players set @a[tag=fireburst_caster] firestaff 0
tag @a[tag=fireburst_caster] remove fireburst_caster
