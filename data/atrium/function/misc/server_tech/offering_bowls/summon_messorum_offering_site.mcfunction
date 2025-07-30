# Used by admins to construct new shrines.
# Each shrine has one of these saved in its structure file.
setblock ~ ~ ~ minecraft:air
summon item_display ~ ~ ~ {CustomNameVisible:0b,shadow_radius:0.1f,width:1f,height:1f,item_display:"head",Tags:["atrium_messorum_shrine_display"],CustomName:{"color":"dark_purple","text":"Messorum Shrine"},glow_color_override:11141290,item:{id:"minecraft:bowl",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_messorum_offering_bowl"]}}}}
summon minecraft:interaction ~ ~ ~ {Tags:["atrium_shrine","atrium_messorum_shrine"],response:1b,width:1f,height:1f}