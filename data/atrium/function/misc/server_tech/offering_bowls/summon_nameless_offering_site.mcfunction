# Used by admins to construct new shrines.
# Each shrine has one of these saved in its structure file.
setblock ~ ~ ~ minecraft:air
summon item_display ~ ~ ~ {CustomNameVisible:0b,shadow_radius:0.1f,width:1f,height:1f,item_display:"head",Tags:["atrium_nameless_shrine_display"],CustomName:{"color":"dark_blue","text":"Nameless Shrine"},glow_color_override:170,item:{id:"minecraft:bowl",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_nameless_offering_bowl"]}}}}
summon minecraft:interaction ~ ~ ~ {Tags:["atrium_shrine","atrium_nameless_shrine"],response:1b,width:1f,height:1f}