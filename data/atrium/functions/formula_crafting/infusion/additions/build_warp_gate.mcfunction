# Layer 0 of the Gate
execute at @e[tag=fx_build,scores={warp_gate=20}] run setblock ~-6 ~-1 ~ minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=20}] run setblock ~-6 ~-1 ~1 minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=20}] run setblock ~-6 ~-1 ~-1 minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=20..}] run particle minecraft:reverse_portal ~-6 ~1 ~ 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=20..}] run particle minecraft:reverse_portal ~-6 ~1 ~1 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=20..}] run particle minecraft:reverse_portal ~-6 ~1 ~-1 0.25 0.25 0.25 0.3 1
# Layer 1 of the Gate
execute at @e[tag=fx_build,scores={warp_gate=60}] run setblock ~-6 ~ ~1 minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=60}] run setblock ~-6 ~ ~-1 minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=60..}] run particle minecraft:reverse_portal ~-6 ~2 ~ 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=60..}] run particle minecraft:reverse_portal ~-6 ~2 ~1 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=60..}] run particle minecraft:reverse_portal ~-6 ~2 ~-1 0.25 0.25 0.25 0.3 1
# Layer 2 of the Gate
execute at @e[tag=fx_build,scores={warp_gate=100}] run setblock ~-6 ~1 ~1 minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=100}] run setblock ~-6 ~1 ~-1 minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=100..}] run particle minecraft:reverse_portal ~-6 ~3 ~ 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=100..}] run particle minecraft:reverse_portal ~-6 ~3 ~1 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=100..}] run particle minecraft:reverse_portal ~-6 ~3 ~-1 0.25 0.25 0.25 0.3 1
# Layer 3 of the Gate
execute at @e[tag=fx_build,scores={warp_gate=140}] run setblock ~-6 ~2 ~ minecraft:lodestone
execute at @e[tag=fx_build,scores={warp_gate=140}] run setblock ~-6 ~2 ~1 minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=140}] run setblock ~-6 ~2 ~-1 minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=140..}] run particle minecraft:reverse_portal ~-6 ~4 ~ 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=140..}] run particle minecraft:reverse_portal ~-6 ~4 ~1 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=140..}] run particle minecraft:reverse_portal ~-6 ~4 ~-1 0.25 0.25 0.25 0.3 1
# Layer 4 of the Gate
execute at @e[tag=fx_build,scores={warp_gate=180}] run setblock ~-6 ~3 ~ minecraft:stone
execute at @e[tag=fx_build,scores={warp_gate=180}] run setblock ~-6 ~3 ~-1 minecraft:stone_stairs[facing=south,half=bottom,shape=straight]
execute at @e[tag=fx_build,scores={warp_gate=180}] run setblock ~-6 ~3 ~1 minecraft:stone_stairs[facing=north,half=bottom,shape=straight]
execute at @e[tag=fx_build,scores={warp_gate=180..}] run particle minecraft:reverse_portal ~-6 ~5 ~ 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=180..}] run particle minecraft:reverse_portal ~-6 ~5 ~1 0.25 0.25 0.25 0.3 1
execute at @e[tag=fx_build,scores={warp_gate=180..}] run particle minecraft:reverse_portal ~-6 ~5 ~-1 0.25 0.25 0.25 0.3 1
# Add the gate slot
execute at @e[tag=fx_build,scores={warp_gate=180}] run summon item_frame ~-5 ~2 ~ {Facing:5b,Invisible:1b}
# Advancement!
execute at @e[tag=fx_build,scores={warp_gate=180}] run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/now_youre_thinking_with_portals
# Run particles until the build is done
execute at @e[tag=fx_build] run particle minecraft:portal ~ ~2 ~ 0 2 0 0.5 10
execute at @e[tag=fx_build] run particle minecraft:portal ~-3 ~2 ~ 2.5 0 0 0.5 10
# add 1 to the score
scoreboard players add @e[tag=fx_build] warp_gate 1
# repeat until build is done
execute if entity @e[tag=fx_build,scores={warp_gate=..200}] run schedule function atrium:formula_crafting/infusion/additions/build_warp_gate 1t
# if the score is 200 or higher, reset things
execute if entity @e[tag=fx_build,scores={warp_gate=200..}] run tag @e[scores={warp_gate=200..}] remove fx_build
execute if entity @e[tag=warp_gate,scores={warp_gate=200..}] run scoreboard players set @e[tag=warp_gate,scores={warp_gate=200..}] warp_gate 0
# sounds
execute at @e[tag=fx_build] run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~ ~ 0.1 2 0.01
