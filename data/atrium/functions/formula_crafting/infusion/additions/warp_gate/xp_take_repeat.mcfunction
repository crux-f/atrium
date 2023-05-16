# Remove 1 from the player's xp and their atrium_xp_debt until the Price Is Paid.
#
xp add @a[tag=atrium_gate_user,scores={atrium_xp_debt=1..}] -1 points
execute at @a[tag=atrium_gate_user,scores={atrium_xp_debt=1..}] run playsound minecraft:block.amethyst_block.chime player @a[distance=..10] ~ ~ ~ 1 0 0.1
execute at @a[tag=atrium_gate_user,scores={atrium_xp_debt=1..}] run particle minecraft:reverse_portal ~ ~1.25 ~ 0.1 0.1 0.1 0.05 10
scoreboard players remove @a[tag=atrium_gate_user,scores={atrium_xp_debt=1..}] atrium_xp_debt 1
#
execute if entity @a[tag=atrium_gate_user,scores={atrium_xp_debt=..0}] as @a[tag=atrium_gate_user,scores={atrium_xp_debt=..0}] run advancement grant @s only atrium:magic/now_youre_thinking_with_portals
execute if entity @a[tag=atrium_gate_user,scores={atrium_xp_debt=..0}] at @a[tag=atrium_gate_user,scores={atrium_xp_debt=..0}] as @e[tag=warp_gate,limit=1,sort=nearest] at @s run function atrium:formula_crafting/infusion/additions/warp_gate/create_portal
# 
execute if entity @a[tag=atrium_gate_user] run schedule function atrium:formula_crafting/infusion/additions/warp_gate/xp_take_repeat 1t
