# Alchemy Cauldron
#
# This command is run from right-clicking on the runic codex entity.
#
# Verify the integrity of the crafting station. If the station is intact, check for a base item in a recipe.
execute as @n[tag=runic_codex,distance=..8] at @s run function atrium:formula_crafting/enchantment/e_pre_crafting_check
advancement revoke @s only atrium:triggers/magic/activate_runic_codex
#
# Grant Magic root advancement
advancement grant @s only atrium:magic/magic_root
