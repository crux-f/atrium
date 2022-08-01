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
# Sound!
playsound minecraft:ui.cartography_table.take_result player @a[distance=..15] ~ ~ ~ 1 1 0.1
# achievements!
execute positioned ~ ~1 ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/magic_root
execute positioned ~ ~1 ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/mightier_than_the_sword
execute positioned ~ ~1 ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/academia
# Making a tracker for number of successful researches for an advancement. May use it for something else later?
scoreboard players add @p[distance=..5,gamemode=!spectator] researches_completed 1
#
# Big advancements!
execute positioned ~ ~1 ~ run advancement grant @p[distance=..5,gamemode=!spectator,scores={researches_completed=100..}] only atrium:magic/finals_are_killing_me
#
# I hope nobody gets this
execute positioned ~ ~1 ~ run advancement grant @p[distance=..5,gamemode=!spectator,scores={researches_completed=1000..}] only atrium:magic/are_you_okay