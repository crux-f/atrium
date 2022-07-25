# Remove 1 Flickering Fuel (casting component cost)
clear @s minecraft:blaze_powder{flickering_fuel:1b} 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# SFX
execute at @s positioned ~ ~2 ~ run particle minecraft:smoke ~ ~ ~ 0.25 2 0.25 0 75
execute at @s positioned ~ ~ ~ run particle minecraft:lava ~ ~ ~ 0.25 2 0.25 0 15
execute at @s run playsound minecraft:block.lava.pop player @a[distance=..25] ~ ~ ~ 1 1 0.5
#
# Summon a marker at the caster's position
execute at @s run summon marker ~ ~ ~ {Tags:["eruption_spell_marker"]}
# Summon ash cloud
execute at @s run summon area_effect_cloud ~ ~10 ~ {Particle:"large_smoke",Radius:3f,Duration:301}
execute at @s run summon area_effect_cloud ~ ~10 ~ {Particle:"dripping_lava",Radius:3f,Duration:301,Tags:["eruption_cloud"]}
# Give the caster Fire Resistance for 5 seconds
effect give @s minecraft:fire_resistance 10 0 true
#
# Run the repeat script.
function atrium:magic/magicitems/spells/eruption_repeat
