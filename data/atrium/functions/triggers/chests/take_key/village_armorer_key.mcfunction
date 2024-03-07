# Remove key
clear @a[tag=village_armorer_key_remove] minecraft:gold_nugget{atrium_village_armorer_key:1b} 1
#
# Remove lock
execute as @a[tag=village_armorer_key_remove] run function atrium:triggers/chests/remove_lock
# Remove tag
tag @a remove village_armorer_key_remove
