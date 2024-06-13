# Particles!
particle minecraft:reverse_portal ~ ~2.5 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.portal.travel block @a[distance=..25] ~ ~ ~ 0.2 0.6 0.01
#
setblock ~ ~-2 ~ command_block{Command:"execute as @p[gamemode=!spectator,distance=..5] run function atrium:patreon/activate_seamwalkers_door"} destroy
#
# Summon the marker entity which tracks everything to do with the door
summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,CustomName:'{"text":"Seamwalker\'s Door","color":"light_purple"}',Silent:1b,Marker:1b,Invisible:1b,Tags:["atrium_particle","atrium_seamwalkers_door"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1b,components:{"minecraft:lore":['{"text":"It will only open for a"}','{"text":"Seamwalker."}','{"text":" "}','{"text":"Space Required:","color":"gray","italic":false}','{"text":"x1, y5, z1","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When Placed:","color":"gray","italic":false}','{"text":"Generates a structure","color":"blue","italic":false}'],"minecraft:custom_name":'{"text":"Seamwalker\'s Door","color":"light_purple","italic":false}',"minecraft:profile":{id:[I;697636098,-602519459,-1875961690,-127884133],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNhOGU0MDJkYWQxYjdkYWQ5YWFlNmY0MDE1OTMyMTgzNDI5Y2U4N2JiYmVjZWQzMTE5MDI2ZjgyOTYzMzZjMiJ9fX0="}]},"minecraft:custom_data":{seamwalkers_door_placer:1b}}}]}
