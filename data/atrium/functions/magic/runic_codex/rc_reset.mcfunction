# Runic Codex reset:
#
# Reset North
execute positioned ~ ~2 ~-3 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset North-East
execute positioned ~2 ~2 ~-2 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset East
execute positioned ~4 ~2 ~ run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset South-East
execute positioned ~-2 ~2 ~2 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset South
execute positioned ~ ~2 ~3 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset South-West
execute positioned ~2 ~2 ~2 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset West
execute positioned ~-4 ~2 ~ run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset North-West
execute positioned ~-2 ~2 ~-2 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Particles!
particle minecraft:enchant ~ ~3 ~ 0.3 0.3 0.3 0.1 500 normal
# Sound!
playsound minecraft:block.enchantment_table.use block @a[distance=..30] ~ ~ ~ 1 0.6 0.1
schedule function atrium:magic/fx/rc_echo1 10t
# achievement!
execute positioned ~ ~1 ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:mightier_than_the_sword
execute positioned ~ ~1 ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic_root

