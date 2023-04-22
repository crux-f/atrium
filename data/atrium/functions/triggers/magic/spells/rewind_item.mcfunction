# Tag caster
tag @s add atrium_rewind_item_caster
#
# Casting SFX
execute anchored eyes run particle minecraft:ash ^ ^ ^0.25 0.1 0.1 0.1 0 20
playsound minecraft:item.lodestone_compass.lock player @a[distance=..10] ~ ~ ~ 0.5 2 0.1
#
# Run the complete script 1 second later.
schedule function atrium:triggers/magic/spells/rewind_item_complete 3s
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete

