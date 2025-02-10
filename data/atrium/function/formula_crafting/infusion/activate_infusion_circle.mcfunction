# Infusion Circle 
#
# This command is run from right-clicking on the infusion circle entity.
#
# Verify the integrity of the crafting station. If the station is intact, check for a base item in a recipe.
execute as @n[tag=infusion_circle] at @s run function atrium:formula_crafting/infusion/i_pre_crafting_check
#
# Revoke
advancement revoke @s only atrium:triggers/magic/activate_infusion_circle
#
# Grant Magic root advancement
advancement grant @s only atrium:magic/magic_root
