# Creates a temporary tree to hide behind, chop down, or climb.
execute positioned ^ ^ ^3 if block ~ ~ ~ #atrium:can_conjure_oak_tree run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_cleanup_safeguard","atrium_oak_tree","atrium_conjured_tree_root"]}
execute positioned ^ ^ ^3 if block ~ ~ ~ minecraft:mud run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_cleanup_safeguard","atrium_mangrove_tree","atrium_conjured_tree_root"]}
execute positioned ^ ^ ^3 if block ~ ~ ~ minecraft:podzol run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_cleanup_safeguard","atrium_spruce_tree","atrium_conjured_tree_root"]}
execute positioned ^ ^ ^3 if block ~ ~ ~ minecraft:mycelium run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_cleanup_safeguard","atrium_mushroom_tree","atrium_conjured_tree_root"]}
execute positioned ^ ^ ^3 if block ~ ~ ~ minecraft:crimson_nylium run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_cleanup_safeguard","atrium_crimson_tree","atrium_conjured_tree_root"]}
execute positioned ^ ^ ^3 if block ~ ~ ~ minecraft:warped_nylium run summon minecraft:marker ~ ~ ~ {Tags:["atrium_special","atrium_temporary_entity","atrium_cleanup_safeguard","atrium_warped_tree","atrium_conjured_tree_root"]}
#
# The tree tree markers have their charge score increased every tick by atrium:entities/temporary_entity_manager.
# That script also automatically removes blocks placed by this spell after 2 minutes.
# Now to actually place them! Run the script controlling the tree growth animation.
#
execute unless entity @e[tag=atrium_conjured_tree_root,distance=..10] run function atrium:triggers/magic/spells/conjure_tree/no_ground_err
# Set timer
execute as @e[tag=atrium_conjured_tree_root,distance=..10] run scoreboard players set @s charge -40
function atrium:triggers/magic/spells/conjure_tree/conjure_tree_repeat
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete