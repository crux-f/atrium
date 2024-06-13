# Probably deprecated, leaving it in case I get back to it
#
#
#
# IF there isnt a tpscroll in the CENTER NORTH slot, teleport any player who is in the Gate to THE FAR SHORES.
#
execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:overworld run tp @s -846.5 81 -12547141.5
# Particles!
execute at @e[tag=fx_travel] run particle minecraft:portal ~ ~2 ~ 0 2 0 0.5 10
execute at @e[tag=fx_travel] run particle minecraft:portal ~-3 ~4 ~ 2.5 0 0 0.5 10
execute at @e[tag=fx_travel] positioned ~-6 ~2.5 ~ run particle minecraft:portal ~ ~ ~ 0 0 0 25 10
execute at @e[tag=fx_travel] positioned ~-6 ~2.5 ~ run particle minecraft:instant_effect ~ ~ ~ 0.15 0.5 0.15 0 10
# IF there IS a tpscroll in the CENTER NORTH slot, teleport any entity (except item frames) who in the Gate to that location.
# execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{sunsetarchi_ws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:overworld run function atrium:travel/waystones/sunsetarchi_tp
#
# execute at @e[tag=fx_travel] positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{sunsetarchi_tws:1b}}}] run execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ as @e[distance=..1,type=!item_frame] in minecraft:overworld run function atrium:travel/waystones/sunsetarchi_tws
#
scoreboard players add @e[tag=fx_travel] warp_gate 1
# UNLESS the time has expired (1 minute = 1200 ticks), run this again in 1 tick (20 ticks = 1 second)
execute if entity @e[tag=fx_travel,scores={warp_gate=..1200}] run schedule function atrium:formula_crafting/infusion/additions/warp_gate/thefarlands_tp 1t
# (add 1 warp_gate point to the infusion circle every tick. Once the circle has 1200 points, stop the script and reset the score to 0).
execute if entity @e[tag=fx_travel,scores={warp_gate=1201..}] run tag @e[scores={warp_gate=1200..}] remove fx_travel
execute if entity @e[tag=warp_gate,scores={warp_gate=1201..}] run scoreboard players set @e[tag=warp_gate,scores={warp_gate=1201..}] warp_gate 0
execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ run playsound minecraft:ambient.cave block @a[distance=..50] ~ ~ ~ 0.1 0.1 0.001
