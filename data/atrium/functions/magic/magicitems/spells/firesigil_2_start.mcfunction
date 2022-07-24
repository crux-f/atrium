execute as @a[predicate=atrium:firesigil_2_req] at @s run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.1 100
execute as @a[predicate=atrium:firesigil_2_req] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",CustomNameVisible:0b,Radius:2.5f,Duration:240,Tags:["firesigil"],Potion:"minecraft:empty",CustomName:'{"text":"Fire Sigil"}'}
execute as @a[predicate=atrium:firesigil_2_req] at @s run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1.2 0.6 0.1
execute as @a[predicate=atrium:firesigil_2_req] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["fx_firesigil"]}
function atrium:magic/magicitems/spells/firesigil_repeat2
tag @a[predicate=atrium:firesigil_2_req] add firesigil_caster
clear @a[tag=firesigil_caster] minecraft:redstone 1
scoreboard players set @a[tag=firesigil_caster] firestaff 0
tag @a[tag=firesigil_caster] remove firesigil_caster
