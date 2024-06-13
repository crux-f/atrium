# If the key is in the keyhole, mark all of the door blocks as "opening" (palace_library_door value 2).
execute if data block ~ ~4 ~ Items[{components:{"minecraft:custom_data":{atrium_palace_door_key:1b}}}] as @e[type=minecraft:marker,distance=..20,nbt={data:{palace_library_door:1}}] run data modify entity @s data.palace_library_door set value 2
# If the key is in the keyhole, run the library_door_open script.
execute if data block ~ ~4 ~ Items[{components:{"minecraft:custom_data":{atrium_palace_door_key:1b}}}] run function atrium:structures/palace/library_door_open
#
# Remove the command block.
execute if data block ~ ~4 ~ Items[{components:{"minecraft:custom_data":{atrium_palace_door_key:1b}}}] run setblock ~ ~ ~ minecraft:water
# Remove the key.
execute if data block ~ ~4 ~ Items[{components:{"minecraft:custom_data":{atrium_palace_door_key:1b}}}] run data remove block ~ ~4 ~ Items