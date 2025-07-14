# SFX
execute positioned ~ ~2 ~ run particle minecraft:smoke ~ ~ ~ 0.25 2 0.25 0 75
execute positioned ~ ~ ~ run particle minecraft:lava ~ ~ ~ 0.25 2 0.25 0 15
playsound minecraft:ambient.basalt_deltas.mood player @a[distance=..30] ~ ~ ~ 1.25 0.8 0.35
playsound minecraft:item.bucket.empty_lava player @a[distance=..30] ~ ~ ~ 1 0.5 0.35
#
# Summon a marker at the caster's position and set it to last for 60 seconds (1200 ticks)
# (uses temporary entity manager in "general")
summon marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_eruption_spell"]}
scoreboard players set @n[distance=..5,tag=atrium_eruption_spell,type=marker] charge -1200
#
# Summon ash cloud
execute at @s run summon area_effect_cloud ~ ~10 ~ {custom_particle:{type:"large_smoke"},Radius:5f,Duration:1180}
execute at @s run summon area_effect_cloud ~ ~10 ~ {custom_particle:{type:"dripping_lava"},Radius:5f,Duration:1180,Tags:["atrium_eruption_cloud"]}
# Give the caster Fire Resistance for 10 seconds
effect give @s minecraft:fire_resistance 10 0 true
#
# Run the repeat script.
function atrium:triggers/magic/spells/eruption_repeat
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
