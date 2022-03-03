# Arcane Crafting Table reset:
#
# Reset North
execute positioned ~ ~2 ~-4 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset North-East
execute positioned ~3 ~2 ~-3 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset East
execute positioned ~4 ~2 ~ run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset South-East
execute positioned ~-3 ~2 ~3 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset South
execute positioned ~ ~2 ~4 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset South-West
execute positioned ~3 ~2 ~3 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset West
execute positioned ~-4 ~2 ~ run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset North-West
execute positioned ~-3 ~2 ~-3 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset Inner North
execute positioned ~ ~2 ~-2 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset Inner East
execute positioned ~2 ~2 ~ run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset Inner South
execute positioned ~ ~2 ~2 run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# Reset Inner West
execute positioned ~-2 ~2 ~ run data merge entity @e[type=item_frame,distance=..1,limit=1] {Facing:1b,Invisible:1b,Item:{Count:0b}}
# If there is an Ender Eye in the center of the infusion circle, destroy it and summon an Endermite
execute if block ~ ~2 ~ minecraft:end_portal_frame[eye=true] run playsound minecraft:block.end_portal_frame.fill block @a[distance=..15] ~ ~ ~ 1 0.5 0.25
execute if block ~ ~2 ~ minecraft:end_portal_frame[eye=true] run summon minecraft:endermite ~ ~3 ~
execute if block ~ ~2 ~ minecraft:end_portal_frame[eye=true] run setblock ~ ~2 ~ minecraft:end_portal_frame[eye=false]
# Particles!
particle minecraft:portal ~ ~3 ~ 0.3 0.3 0.3 1 500 normal
# Sound!
playsound minecraft:block.beacon.activate block @a[distance=..30] ~ ~ ~ 1 1 1
# achievement!
execute positioned ~ ~1 ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:formulaic
execute positioned ~ ~1 ~ run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic_root
