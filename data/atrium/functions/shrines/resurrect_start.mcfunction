# particles and sound for the diamond turning to ash
execute at @p[tag=resurrector] anchored eyes run particle minecraft:ash ^-0.2 ^ ^0.25 0 0 0 0.1 20
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0 100
playsound minecraft:item.totem.use master @a[distance=..30] ~ ~ ~ 0.5 2 0.1
# tag with free_res if they are using a totem
tag @p[tag=resurrector,nbt={SelectedItem:{id:'minecraft:totem_of_undying'}},distance=..5] add free_res
# disappear 1 res item from resurrector's inventory
clear @p[tag=resurrector,nbt={SelectedItem:{id:'minecraft:diamond'}},distance=..5] minecraft:diamond 1
clear @p[tag=resurrector,nbt={SelectedItem:{id:'minecraft:totem_of_undying'}},distance=..5] minecraft:totem_of_undying 1
# tag the nearest player in spectator mode to the Resurrector as the Resurrectee
tag @p[gamemode=spectator,distance=..10] add resurrectee
# IF there is a Resurrector and a Resurrectee, start the repeat function
execute at @p[tag=resurrector,distance=..5] if entity @a[tag=resurrectee,distance=..10] run function atrium:shrines/resurrect_repeat
# If there isn't, remove the resurrector tag from the player and deliver failure message
execute unless entity @a[tag=resurrectee,distance=..15] run tellraw @p[tag=resurrector] {"text":"But there was nobody there.","italic":true,"color":"red"}
execute unless entity @a[tag=resurrectee,distance=..15] run tag @p[tag=resurrector] remove resurrector
