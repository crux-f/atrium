# Already has caster position(s) stored from charge script
#
# Tag the caster for the repeat script 
tag @s add atrium_dance_caster
#
# Launch caster with Levitation XIII for 1 second!
effect give @s levitation 1 12 true
# Gives them Slow Falling I for 4 seconds.
effect give @s slow_falling 5 0 false
# Start repeating function
schedule function atrium:triggers/magic/spells/dance_repeat 3s
#
# SFX
#
execute at @s anchored eyes run particle minecraft:end_rod ^ ^ ^ 0 0.75 0 0 50
execute at @s anchored feet run particle minecraft:gust ~ ~ ~ 0.25 0.5 0.25 0.5 10
execute at @s run playsound minecraft:entity.breeze.idle_ground player @a[distance=..10] ~ ~ ~ 1 1.75 0.2
#
# Reset to allow for chain casting
scoreboard players reset @s atrium_dance_spell
# Spell cleanup
function atrium:triggers/magic/spell_cast_complete