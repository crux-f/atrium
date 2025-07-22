# Remove key
clear @a[tag=village_savanna_house_key_remove] *[minecraft:custom_data~{atrium_village_savanna_house_key:1b}] 1
#
# Remove lock
execute as @a[tag=village_savanna_house_key_remove] run function atrium:triggers/chests/remove_lock
# Remove tag
tag @a remove village_savanna_house_key_remove
