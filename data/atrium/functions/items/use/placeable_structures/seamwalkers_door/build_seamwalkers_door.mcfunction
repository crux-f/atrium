# Particles!
particle minecraft:reverse_portal ~ ~2.5 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.portal.travel block @a[distance=..25] ~ ~ ~ 0.2 0.6 0.01
#
setblock ~ ~-2 ~ command_block{Command:"execute as @p[gamemode=!spectator] run function atrium:patreon/seamwalkers_door"} destroy
#
# Summon the marker entity which tracks everything to do with the door
summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,CustomName:'{"text":"Seamwalker\'s Door","color":"light_purple","italic":false}',Silent:1b,Marker:1b,Invisible:1b,Tags:["atrium_particle","atrium_seamwalkers_door"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;697636098,-602519459,-1875961690,-127884133],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNhOGU0MDJkYWQxYjdkYWQ5YWFlNmY0MDE1OTMyMTgzNDI5Y2U4N2JiYmVjZWQzMTE5MDI2ZjgyOTYzMzZjMiJ9fX0="}]}}}}]}
