# Remove key
clear @a[tag=outpost_key_remove] minecraft:iron_nugget{atrium_outpost_key:1b} 1
#
# Remove lock
execute as @a[tag=outpost_key_remove] run function atrium:triggers/chests/remove_lock
# Remove tag
tag @a remove outpost_key_remove
