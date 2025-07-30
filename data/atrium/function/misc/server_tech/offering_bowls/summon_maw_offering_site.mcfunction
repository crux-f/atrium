# Used by admins to construct new shrines.
# Each shrine has one of these saved in its structure file.
setblock ~ ~ ~ minecraft:air
summon item_display ~ ~ ~ {CustomNameVisible:0b,shadow_radius:0.1f,width:1f,height:1f,item_display:"head",Tags:["atrium_maw_shrine_display"],CustomName:{"color":"dark_red","text":"Maw Shrine"},glow_color_override:11141120,item:{id:"minecraft:bowl",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_maw_offering_bowl"]}}}}
summon minecraft:interaction ~ ~ ~ {Tags:["atrium_shrine","atrium_maw_shrine"],response:1b,width:1f,height:1f}