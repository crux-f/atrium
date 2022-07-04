tag @a[predicate=atrium:parallax_1_req] add parallax_caster
execute as @a[predicate=atrium:parallax_1_req] at @s anchored eyes run particle minecraft:white_ash ^ ^ ^1.5 0.03 0.03 0.03 0.5 150
execute as @a[predicate=atrium:parallax_1_req] at @s run playsound minecraft:block.end_portal.spawn master @a[distance=..30] ~ ~ ~ 0.3 2 0.1
execute as @a[predicate=atrium:parallax_1_req] at @s anchored eyes positioned ^ ^ ^3 run tag @e[distance=..3,limit=1,sort=random,tag=!parallax_caster] add parallax_target
execute as @e[tag=parallax_target] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",CustomNameVisible:0b,Radius:0f,Duration:120,Tags:["parallax"],Potion:"minecraft:empty",CustomName:'{"text":"Return Point"}'}
execute at @e[tag=parallax_target] run particle minecraft:warped_spore ~ ~ ~ 0.5 0.5 0.5 1 150
effect give @e[tag=parallax_target] minecraft:slow_falling 5 0 true
data merge entity @e[tag=parallax_target,type=!minecraft:player,limit=1] {PersistenceRequired:1b} 
execute as @e[tag=parallax_target,type=!minecraft:player] at @s run tp @s ~ 256 ~
execute as @e[tag=parallax_target,type=minecraft:player] at @s in atrium:between_worlds run tp @s 9999 99 9999
function atrium:magic/magicitems/spells/parallax_repeat1
clear @a[tag=parallax_caster] minecraft:glowstone_dust 1
scoreboard players set @a[tag=parallax_caster] spacestaff 0
tag @a[tag=parallax_caster] remove parallax_caster
