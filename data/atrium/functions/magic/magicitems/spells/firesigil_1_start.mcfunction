execute at @s run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.1 70
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"smoke",CustomNameVisible:0b,Radius:1f,Duration:240,Tags:["firesigil"],Potion:"minecraft:empty",CustomName:'{"text":"Fire Sigil"}'}
execute at @s run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1.2 0.6 0.1
execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["fx_firesigil"]}
execute as @s run function atrium:magic/magicitems/spells/firesigil_repeat
clear @s minecraft:redstone 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete