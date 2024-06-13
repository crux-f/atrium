# Tag caster
tag @s add atrium_elsewhere_caster
#
# Casting SFX
particle minecraft:portal ~ ~1.25 ~ 0 0 0 5 100
playsound minecraft:block.beacon.power_select player @a[distance=..10] ~ ~ ~ 0.5 0.75 1
#
# Run the next script 3 seconds later.
schedule function atrium:triggers/magic/spells/elsewhere_complete 3s
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete