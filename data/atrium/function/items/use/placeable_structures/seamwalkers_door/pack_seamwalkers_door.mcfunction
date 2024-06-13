# Particles!
particle minecraft:reverse_portal ~ ~2 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.ender_chest.close block @a[distance=..15] ~ ~ ~ 1 0.5 0.1
#
setblock ~ ~ ~ minecraft:air
#
execute if block ~ ~2 ~ minecraft:stone_pressure_plate run setblock ~ ~2 ~ minecraft:air
execute at @e[tag=atrium_seamwalkers_door,distance=..5,limit=1,sort=nearest] run particle flash ~ ~2.5 ~ 0 0 0 0 10 normal
execute at @e[tag=atrium_seamwalkers_door,distance=..5,limit=1,sort=nearest] run playsound entity.enderman.teleport block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
execute at @e[tag=atrium_seamwalkers_door,distance=..5,limit=1,sort=nearest] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:player_head",count:1b,components:{"minecraft:lore":['{"text":"It will only open for a"}','{"text":"Seamwalker."}','{"text":" "}','{"text":"Space Required:","color":"gray","italic":false}','{"text":"x1, y5, z1","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When Placed:","color":"gray","italic":false}','{"text":"Generates a structure","color":"blue","italic":false}'],"minecraft:custom_name":'{"text":"Seamwalker\'s Door","color":"light_purple","italic":false}',"minecraft:profile":{id:[I;697636098,-602519459,-1875961690,-127884133],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNhOGU0MDJkYWQxYjdkYWQ5YWFlNmY0MDE1OTMyMTgzNDI5Y2U4N2JiYmVjZWQzMTE5MDI2ZjgyOTYzMzZjMiJ9fX0="}]},"minecraft:custom_data":{seamwalkers_door_placer:1b}}}}
kill @e[tag=atrium_seamwalkers_door,distance=..5,limit=1,sort=nearest]
#
# Cleanup
execute as @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] run function atrium:items/use/placeable_structures/rod_of_relocation_cleanup