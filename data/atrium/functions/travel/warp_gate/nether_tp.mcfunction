# IF there isnt a tpscroll in the CENTER NORTH slot, teleport any player who is in the Gate to current nether spawn.
#
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 unless entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{tpscroll:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:the_nether run tp @s 4626.5 87 -360.5
# Particles!
execute at @e[tag=fx_travel] run particle minecraft:portal ~ ~2 ~ 0 2 0 0.5 10
execute at @e[tag=fx_travel] run particle minecraft:portal ~-3 ~4 ~ 2.5 0 0 0.5 10
execute at @e[tag=fx_travel] positioned ~-6 ~2.5 ~ run particle minecraft:flame ~ ~ ~ 0.15 0.5 0.15 0.1 10
# IF there IS a tpscroll in the CENTER NORTH slot, teleport any entity (except item frames) who in the Gate to that location.
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{agaricruins_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:the_nether run function atrium:travel/waystones/agaricruins_tp
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{foulswellhold_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:the_nether run function atrium:travel/waystones/foulswellhold_tp
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{infernalwastes_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:the_nether run function atrium:travel/waystones/infernalwastes_tp
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{oasisofsouls_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:the_nether run function atrium:travel/waystones/oasisofsouls_tp
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{sanguinewild_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:the_nether run function atrium:travel/waystones/sanguinewild_tp
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{silentthicket_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:the_nether run function atrium:travel/waystones/silentthicket_tp
#
scoreboard players add @e[tag=fx_travel] warp_gate 1
# UNLESS the time has expired (1 minute = 1200 ticks), run this again in 1 tick (20 ticks = 1 second)
execute if entity @e[tag=fx_travel,scores={warp_gate=..1200}] run schedule function atrium:travel/warp_gate/nether_tp 1t
# (add 1 warp_gate point to the infusion circle every tick. Once the circle has 1200 points, stop the script and reset the score to 0).
execute if entity @e[tag=fx_travel,scores={warp_gate=1201..}] run tag @e[scores={warp_gate=1200..}] remove fx_travel
execute if entity @e[tag=warp_gate,scores={warp_gate=1201..}] run scoreboard players set @e[tag=warp_gate,scores={warp_gate=1201..}] warp_gate 0
execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ run playsound minecraft:block.beacon.ambient block @a[distance=..50] ~ ~ ~ 1 1 0.4
