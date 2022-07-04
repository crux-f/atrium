execute as @a[predicate=atrium:fireburst_3_req] at @s anchored eyes run particle minecraft:flame ^ ^ ^3 1 1 1 0.1 100
execute as @a[predicate=atrium:fireburst_3_req] at @s anchored eyes run particle minecraft:lava ^ ^ ^3 1.5 1 1.5 0.1 50
execute as @a[predicate=atrium:fireburst_3_req] at @s anchored eyes run particle minecraft:flame ^ ^ ^5.5 1.5 1 1.5 0.1 125
execute as @a[predicate=atrium:fireburst_3_req] at @s anchored eyes run particle minecraft:lava ^ ^ ^5.5 1.5 1 1.5 0.1 50
execute as @a[predicate=atrium:fireburst_3_req] at @s anchored eyes run particle minecraft:flame ^ ^ ^8 2 1.5 2 0.1 150
execute as @a[predicate=atrium:fireburst_3_req] at @s anchored eyes run particle minecraft:lava ^ ^ ^8 2 1.5 2 0.1 50
execute as @a[predicate=atrium:fireburst_3_req] at @s anchored eyes positioned ^ ^ ^3 run execute at @e[distance=..2.5] run summon small_fireball ~ ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute as @a[predicate=atrium:fireburst_3_req] at @s anchored eyes positioned ^ ^ ^5.5 run execute at @e[distance=..3.5] run summon small_fireball ~ ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute as @a[predicate=atrium:fireburst_3_req] at @s anchored eyes positioned ^ ^ ^8 run execute at @e[distance=..4.5] run summon small_fireball ~ ~2 ~ {direction:[0.0,-10.0,0.0],power:[0.0,-10.0,0.0]}
execute as @a[predicate=atrium:fireburst_3_req] at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..30] ~ ~ ~ 1 0.1 0.1
tag @a[predicate=atrium:fireburst_3_req] add fireburst_caster
clear @a[tag=fireburst_caster] minecraft:glowstone_dust 1
scoreboard players set @a[tag=fireburst_caster] firestaff 0
tag @a[tag=fireburst_caster] remove fireburst_caster
