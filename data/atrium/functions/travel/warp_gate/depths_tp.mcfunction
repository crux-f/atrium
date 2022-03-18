# IF there isnt a tpscroll in the CENTER NORTH slot, teleport any player who is in the Gate to spawn location in depths.
#
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 unless entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{tpscroll:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in atrium:depths run tp @s 37013.5 280 -2882.5
# Particles!
execute at @e[tag=fx_travel] run particle minecraft:portal ~ ~2 ~ 0 2 0 0.5 10
execute at @e[tag=fx_travel] run particle minecraft:portal ~-3 ~4 ~ 2.5 0 0 0.5 10
execute at @e[tag=fx_travel] positioned ~-6 ~2.5 ~ run particle minecraft:mycelium ~ ~ ~ 0.15 0.5 0.15 0.1 10
#
# IF there IS a tpscroll in the CENTER NORTH slot, teleport any entity (except item frames) who in the Gate to that location.
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{underprovince_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in atrium:depths run function atrium:travel/waystones/underprovince_tp
#
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{myrk_faelinn_n_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in atrium:depths run function atrium:travel/waystones/iteration_3/depths/myrk_faelinn_n
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{myrk_faelinn_e_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in atrium:depths run function atrium:travel/waystones/iteration_3/depths/myrk_faelinn_e
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{myrk_faelinn_w_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in atrium:depths run function atrium:travel/waystones/iteration_3/depths/myrk_faelinn_w
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{myrk_faelinn_s_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in atrium:depths run function atrium:travel/waystones/iteration_3/depths/myrk_faelinn_s
#
scoreboard players add @e[tag=fx_travel] warp_gate 1
# UNLESS the time has expired (1 minute = 1200 ticks), run this again in 1 tick (20 ticks = 1 second)
execute if entity @e[tag=fx_travel,scores={warp_gate=..1200}] run schedule function atrium:travel/warp_gate/depths_tp 1t
# (add 1 warp_gate point to the infusion circle every tick. Once the circle has 1200 points, stop the script and reset the score to 0).
execute if entity @e[tag=fx_travel,scores={warp_gate=1201..}] run tag @e[scores={warp_gate=1200..}] remove fx_travel
execute if entity @e[tag=warp_gate,scores={warp_gate=1201..}] run scoreboard players set @e[tag=warp_gate,scores={warp_gate=1201..}] warp_gate 0
execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ run playsound minecraft:block.beacon.ambient block @a[distance=..50] ~ ~ ~ 1 1 0.4
