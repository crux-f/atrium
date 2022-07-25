execute as @a[predicate=atrium:firesigil_3_req] at @s run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.1 100
execute as @a[predicate=atrium:firesigil_3_req] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",CustomNameVisible:0b,Radius:2.5f,Duration:240,Tags:["firesigil_3"],Potion:"minecraft:empty",CustomName:'{"text":"Fire Sigil"}'}
execute as @a[predicate=atrium:firesigil_3_req] at @s run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1.2 0.25 0.1
execute as @a[predicate=atrium:firesigil_3_req] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["fx_firesigil_3"]}
execute as @a[predicate=atrium:firesigil_3_req] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["fx_firesigil_3_secondary"]}
execute as @s run function atrium:magic/magicitems/spells/firesigil_repeat3
clear @s minecraft:redstone 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
