# Remove key
clear @a[tag=lichs_key_remove] minecraft:iron_nugget[minecraft:custom_data={atrium_lichs_key:1b}] 1
#
# Remove lock
execute as @a[tag=lichs_key_remove] run function atrium:triggers/chests/remove_lock
# Remove tag
tag @a remove lichs_key_remove