# Tag caster
tag @s add atrium_destabilize_item_caster
#
# Casting SFX
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:crimson_spore ~ ~ ~ 0 0 0 0.25 25
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:warped_spore ~ ~ ~ 0 0 0 0.25 25
playsound minecraft:block.amethyst_cluster.break player @a[distance=..10] ~ ~ ~ 1 0.1 0.1
#
# Run the next script 3 seconds later.
schedule function atrium:triggers/magic/spells/destabilize_item_complete 3s
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete