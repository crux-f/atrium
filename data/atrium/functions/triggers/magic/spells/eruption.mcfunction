# SFX
execute positioned ~ ~2 ~ run particle minecraft:smoke ~ ~ ~ 0.25 2 0.25 0 75
execute positioned ~ ~ ~ run particle minecraft:lava ~ ~ ~ 0.25 2 0.25 0 15
playsound minecraft:block.lava.pop player @a[distance=..25] ~ ~ ~ 1 1 0.5
#
# Summon a marker at the caster's position and set it to last for 60 seconds (1200 ticks)
# (uses temporary entity manager in "general")
summon marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_eruption_spell"]}
scoreboard players set @e[limit=1,sort=nearest,tag=atrium_eruption_spell,type=marker] charge -1200
#
# Summon ash cloud
execute at @s run summon area_effect_cloud ~ ~10 ~ {Particle:"large_smoke",Radius:5f,Duration:1180}
execute at @s run summon area_effect_cloud ~ ~10 ~ {Particle:"dripping_lava",Radius:5f,Duration:1180,Tags:["atrium_eruption_cloud"]}
# Give the caster Fire Resistance for 10 seconds
effect give @s minecraft:fire_resistance 10 0 true
#
# Run the repeat script.
function atrium:triggers/magic/spells/eruption_repeat
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
