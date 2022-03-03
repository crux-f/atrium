execute as @a[predicate=atrium:lethargysigil_1_req] at @s run particle dust 0.333 0.200 1.000 2 ~ ~ ~ 0.5 1.5 0.5 1 50 normal
execute as @a[predicate=atrium:lethargysigil_1_req] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"portal",CustomNameVisible:0b,Radius:1f,Duration:240,Tags:["lethargysigil"],Potion:"minecraft:empty",CustomName:'{"text":"Lethargy Sigil"}'}
execute as @a[predicate=atrium:lethargysigil_1_req] at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..30] ~ ~ ~ 1 0.2 0.1
execute as @a[predicate=atrium:lethargysigil_1_req] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["fx_lethargysigil"]}
function atrium:magic/magicitems/spells/lethargysigil_repeat1
tag @a[predicate=atrium:lethargysigil_1_req] add lethargysigil_caster
clear @a[tag=lethargysigil_caster] minecraft:redstone 1
scoreboard players set @a[tag=lethargysigil_caster] timestaff 0
tag @a[tag=lethargysigil_caster] remove lethargysigil_caster
