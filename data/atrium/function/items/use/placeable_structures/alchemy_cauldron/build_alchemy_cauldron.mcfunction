# Particles!
particle minecraft:portal ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.anvil.place block @a[distance=..15] ~ ~ ~ 0.5 0.5 0.1
#
# Summon the interaction entity which tracks everything to do with this crafting station
summon minecraft:interaction ~ ~ ~ {Tags:["atrium_crafting_station","alchemy_cauldron","atrium_setting_up_cauldron"],response:1b,width:1.25f,height:1.25f}
# CENTER NORTH
execute at @n[tag=atrium_setting_up_cauldron] positioned ~ ~ ~-2 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_cauldron] positioned ~ ~ ~-2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER EAST
execute at @n[tag=atrium_setting_up_cauldron] positioned ~2 ~ ~ run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_cauldron] positioned ~2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER SOUTH
execute at @n[tag=atrium_setting_up_cauldron] positioned ~ ~ ~2 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_cauldron] positioned ~ ~ ~2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER WEST
execute at @n[tag=atrium_setting_up_cauldron] positioned ~-2 ~ ~ run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_cauldron] positioned ~-2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
tag @n[tag=atrium_setting_up_cauldron] remove atrium_setting_up_cauldron