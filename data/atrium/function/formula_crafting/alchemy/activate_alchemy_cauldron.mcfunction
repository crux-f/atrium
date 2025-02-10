# Alchemy Cauldron
#
# This command is run from right-clicking on the alchemy_cauldron entity.
#
# Verify the integrity of the crafting station. If the station is intact, check for a base item in a recipe.
execute as @n[tag=alchemy_cauldron,distance=..8] at @s run function atrium:formula_crafting/alchemy/a_pre_crafting_check
advancement revoke @s only atrium:triggers/magic/activate_alchemy_cauldron
#
# Grant Magic root advancement
advancement grant @s only atrium:magic/magic_root
