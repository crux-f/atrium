# Conjured Trees (or tree-like plants) are always 7 blocks tall.
# The gap between each block being placed is a quarter of a second or 5 ticks.
#
# Splitting these out to avoid redundant scripts running too often
execute as @e[tag=atrium_conjured_tree_root,scores={charge=5}] at @s run function atrium:triggers/magic/spells/conjure_tree/growth_stage_1
execute as @e[tag=atrium_conjured_tree_root,scores={charge=10}] at @s run function atrium:triggers/magic/spells/conjure_tree/growth_stage_2
execute as @e[tag=atrium_conjured_tree_root,scores={charge=15}] at @s run function atrium:triggers/magic/spells/conjure_tree/growth_stage_3
execute as @e[tag=atrium_conjured_tree_root,scores={charge=20}] at @s run function atrium:triggers/magic/spells/conjure_tree/growth_stage_4
execute as @e[tag=atrium_conjured_tree_root,scores={charge=25}] at @s run function atrium:triggers/magic/spells/conjure_tree/growth_stage_5
execute as @e[tag=atrium_conjured_tree_root,scores={charge=30}] at @s run function atrium:triggers/magic/spells/conjure_tree/growth_stage_6
execute as @e[tag=atrium_conjured_tree_root,scores={charge=35}] at @s run function atrium:triggers/magic/spells/conjure_tree/growth_stage_7
#
# (giving an extra 5 ticks in case things go weird)
execute as @e[tag=atrium_conjured_tree_root,scores={charge=40..}] run kill @s
#
# Particles!
execute at @e[tag=atrium_conjured_tree_root] at @e[tag=atrium_conjured_block_2m,distance=..8] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.25 1 normal
#
# Run every tick as long as the root exists
execute if entity @e[tag=atrium_conjured_tree_root] run schedule function atrium:triggers/magic/spells/conjure_tree/conjure_tree_repeat 1t