# Alchemy Cauldron
#
# This command is run directly from the single command block included in all of atrium's custom crafting stations.
#
# Verify the integrity of the crafting station. If the station is intact, check for a base item in a recipe.
execute positioned ~ ~-1 ~8 as @e[tag=alchemy_cauldron,distance=..3,limit=1,sort=nearest] at @s run function atrium:formula_crafting/alchemy/a_pre_crafting_check
