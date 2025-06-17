# Remove key
clear @a[tag=z_key_remove] minecraft:iron_nugget[minecraft:custom_data={atrium_z_key:1b}] 1
#
# Remove lock
execute as @a[tag=z_key_remove] run function atrium:triggers/chests/remove_lock
# Remove tag
tag @a remove z_key_remove
