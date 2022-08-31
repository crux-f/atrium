# Remove 1 from the player's xp and their charge thingy
xp add @a[tag=gate_user,scores={charge=1..}] -1 points
execute at @a[tag=gate_user,scores={charge=1..}] run playsound minecraft:block.amethyst_block.chime player @a[distance=..10] ~ ~ ~ 1 0 0.1
execute at @a[tag=gate_user,scores={charge=1..}] run particle minecraft:reverse_portal ~ ~1.25 ~ 0.1 0.1 0.1 0.05 10
scoreboard players remove @a[tag=gate_user,scores={charge=1..}] charge 1
#
execute if entity @a[tag=gate_user,scores={charge=..0}] at @a[tag=gate_user,scores={charge=..0}] as @e[tag=warp_gate,limit=1,sort=nearest] at @s run function atrium:travel/warp_gate/create_portal
# 
execute if entity @a[tag=gate_user] run schedule function atrium:travel/warp_gate/xp_take_repeat 1t
