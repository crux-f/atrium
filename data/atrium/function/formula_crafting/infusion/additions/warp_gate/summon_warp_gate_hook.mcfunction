# Tag the player with 'warping'
tag @s add atrium_currently_warping
# Summon a atrium_warp_gate_hook
summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["atrium_warp_gate_hook"],CustomName:'{"text":"Warp Gate Hook","color":"blue","italic":false}'}
execute positioned ~ ~3 ~ store result score @e[tag=atrium_warp_gate_hook,limit=1,sort=nearest] atrium_x_coordinate run data get entity @e[limit=1,type=minecraft:item_frame,sort=nearest,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] Item.components.minecraft:lodestone_tracker.target.pos[0]
execute positioned ~ ~3 ~ store result score @e[tag=atrium_warp_gate_hook,limit=1,sort=nearest] atrium_y_coordinate run data get entity @e[limit=1,type=minecraft:item_frame,sort=nearest,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] Item.components.minecraft:lodestone_tracker.target.pos[1]
execute positioned ~ ~3 ~ store result score @e[tag=atrium_warp_gate_hook,limit=1,sort=nearest] atrium_z_coordinate run data get entity @e[limit=1,type=minecraft:item_frame,sort=nearest,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] Item.components.minecraft:lodestone_tracker.target.pos[2]
execute as @e[tag=atrium_warp_gate_hook] run function atrium:formula_crafting/infusion/additions/warp_gate/reel_entity