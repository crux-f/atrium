# Tag the player with 'warping'
tag @s add warping
# Summon a warp_gate_hook
summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["warp_gate_hook"],CustomName:'{"text":"Warp Gate Hook","color":"blue","italic":false}'}
execute positioned ~ ~3 ~ store result score @e[tag=warp_gate_hook,limit=1,sort=nearest] x_coordinate run data get entity @e[limit=1,type=minecraft:item_frame,sort=nearest,nbt={Item:{tag:{LodestoneTracked:1b}}}] Item.tag.LodestonePos.X
execute positioned ~ ~3 ~ store result score @e[tag=warp_gate_hook,limit=1,sort=nearest] y_coordinate run data get entity @e[limit=1,type=minecraft:item_frame,sort=nearest,nbt={Item:{tag:{LodestoneTracked:1b}}}] Item.tag.LodestonePos.Y
execute positioned ~ ~3 ~ store result score @e[tag=warp_gate_hook,limit=1,sort=nearest] z_coordinate run data get entity @e[limit=1,type=minecraft:item_frame,sort=nearest,nbt={Item:{tag:{LodestoneTracked:1b}}}] Item.tag.LodestonePos.Z
execute as @e[tag=warp_gate_hook] run function atrium:travel/warp_gate/reel_entity