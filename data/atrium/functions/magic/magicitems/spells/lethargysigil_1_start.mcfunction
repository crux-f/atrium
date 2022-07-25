execute at @s run particle dust 0.333 0.200 1.000 2 ~ ~ ~ 0.5 1.5 0.5 1 50 normal
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"portal",CustomNameVisible:0b,Radius:1f,Duration:240,Tags:["lethargysigil"],Potion:"minecraft:empty",CustomName:'{"text":"Lethargy Sigil"}'}
execute at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..30] ~ ~ ~ 1 0.2 0.1
execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["fx_lethargysigil"]}
function atrium:magic/magicitems/spells/lethargysigil_repeat1
clear @s minecraft:redstone 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
