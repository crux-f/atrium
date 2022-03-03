execute as @a[predicate=atrium:nourishment_2_req] at @s run particle minecraft:bubble_pop ~ ~3 ~ 1 2.5 1 0.1 100
execute as @a[predicate=atrium:nourishment_2_req] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["nourishment_marker"]}
execute as @a[predicate=atrium:nourishment_2_req] at @s run playsound minecraft:block.bubble_column.upwards_inside player @a[distance=..30] ~ ~ ~ 1 2 1
execute as @a[predicate=atrium:nourishment_2_req] at @s run summon area_effect_cloud ~ ~15 ~ {Particle:"cloud",Radius:3f,Duration:240}
execute as @a[predicate=atrium:nourishment_2_req] at @s run summon area_effect_cloud ~ ~15 ~ {Particle:"dripping_water",Radius:3f,Duration:240,Tags:["nourishment_cloud"]}
tag @a[predicate=atrium:nourishment_2_req] add nourishment_caster
function atrium:magic/magicitems/spells/nourishment_2_repeat
clear @a[tag=nourishment_caster] minecraft:redstone 1
scoreboard players set @a[tag=nourishment_caster] waterstaff 0

