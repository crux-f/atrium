# Empowered Cauldron Reset:
#
# Reset North
execute positioned ~ ~2 ~-2 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset East
execute positioned ~2 ~2 ~ run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset South
execute positioned ~ ~2 ~2 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset West
execute positioned ~-2 ~2 ~ run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Particles!
particle minecraft:reverse_portal ~ ~2 ~ 0.1 0.3 0.1 1 500 normal
# Sound!
playsound minecraft:block.brewing_stand.brew block @a[distance=..30] ~ ~ ~ 1 1 1
# achievement!
execute positioned ~ ~3 ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:arcane_brewery
execute positioned ~ ~3 ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic_root
# Remove anchor
kill @e[tag=empoweredcauldron]
