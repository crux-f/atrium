# Particles!
execute at @e[tag=fx_travel] run particle minecraft:portal ~ ~ ~ 0 2 0 0.5 10
execute at @e[tag=fx_travel] run particle minecraft:portal ~-3 ~2 ~ 2.5 0 0 0.5 10
execute at @e[tag=fx_travel] positioned ~-6 ~0.5 ~ run particle minecraft:ambient_entity_effect ~ ~ ~ 0.15 0.5 0.15 0.1 10
execute at @e[tag=fx_travel] at @e[tag=warp_gate,distance=..10] run playsound minecraft:block.conduit.ambient.short block @a[distance=..20] ~ ~ ~ 0.5 2 0.05
#
# Teleport!
execute in atrium:between_worlds at @e[tag=fx_travel] positioned ~-6 ~ ~ as @e[distance=..1,type=!item_frame,type=!marker,tag=!atrium_currently_warping] at @s run function atrium:formula_crafting/infusion/additions/warp_gate/summon_warp_gate_hook
#
scoreboard players add @e[tag=fx_travel] warp_gate 1
# UNLESS the time has expired (1 minute = 1200 ticks) or the compass was removed, run this again in 1 tick (20 ticks = 1 second)
execute at @e[tag=fx_travel,scores={warp_gate=..1200}] positioned ~-5 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] run schedule function atrium:formula_crafting/infusion/additions/warp_gate/between_worlds_tp 1t
#
# (add 1 warp_gate point to the infusion circle every tick. Once the circle has 1200 points, stop the script and reset the score to 0).
execute as @e[tag=fx_travel,scores={warp_gate=1201..}] run function atrium:formula_crafting/infusion/additions/warp_gate/portal_end
execute at @e[tag=fx_travel] positioned ~-6 ~2 ~ run playsound minecraft:block.beacon.ambient block @a[distance=..50] ~ ~ ~ 1 1 0.4