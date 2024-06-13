# Open Gate
#
# Tag to save original state of gate
execute if block ~ ~ ~ minecraft:lever[powered=false] run tag @s add toggling_lever_on
execute if block ~ ~ ~ minecraft:lever[powered=true] run tag @s add toggling_lever_off
#
playsound minecraft:block.lever.click block @a[distance=..7] ~ ~ ~ 0.5 1 0.1
#
execute if block ~ ~ ~ minecraft:lever[facing=east,face=wall] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=east,face=wall]
execute if block ~ ~ ~ minecraft:lever[facing=north,face=wall] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=north,face=wall]
execute if block ~ ~ ~ minecraft:lever[facing=south,face=wall] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=south,face=wall]
execute if block ~ ~ ~ minecraft:lever[facing=west,face=wall] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=west,face=wall]
execute if block ~ ~ ~ minecraft:lever[facing=east,face=floor] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=east,face=floor]
execute if block ~ ~ ~ minecraft:lever[facing=north,face=floor] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=north,face=floor]
execute if block ~ ~ ~ minecraft:lever[facing=south,face=floor] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=south,face=floor]
execute if block ~ ~ ~ minecraft:lever[facing=west,face=floor] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=west,face=floor]
execute if block ~ ~ ~ minecraft:lever[facing=east,face=ceiling] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=east,face=ceiling]
execute if block ~ ~ ~ minecraft:lever[facing=north,face=ceiling] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=north,face=ceiling]
execute if block ~ ~ ~ minecraft:lever[facing=south,face=ceiling] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=south,face=ceiling]
execute if block ~ ~ ~ minecraft:lever[facing=west,face=ceiling] run setblock ~ ~ ~ minecraft:lever[powered=true,facing=west,face=ceiling]
#
#
tag @s remove toggling_lever_on
tag @s remove toggling_lever_off
