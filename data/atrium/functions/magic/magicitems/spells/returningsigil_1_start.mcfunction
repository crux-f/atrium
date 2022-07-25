execute at @s run summon ender_pearl ~ ~2 ~ {NoGravity:1b,Motion:[0.0,0.003,0.0],Tags:["decor_pearl"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"portal",CustomNameVisible:0b,Radius:0.5f,Duration:240,Tags:["returningsigil"],Potion:"minecraft:empty",CustomName:'{"text":"Returning Sigil"}'}
execute at @s run playsound minecraft:entity.ender_eye.death player @a[distance=..30] ~ ~ ~ 1 0.5 0.1
execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["fx_returningsigil"]}
function atrium:magic/magicitems/spells/returningsigil_repeat1
clear @s minecraft:redstone 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete

