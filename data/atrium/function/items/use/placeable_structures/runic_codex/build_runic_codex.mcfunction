# Particles!
particle minecraft:enchant ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.enchantment_table.use block @a[distance=..15] ~ ~ ~ 1 0.5 1
#
# Summon the interaction entity which tracks everything to do with this crafting station
summon minecraft:interaction ~ ~ ~ {Tags:["atrium_crafting_station","runic_codex","atrium_setting_up_codex"],response:1b,width:1.25f,height:1.25f}
#
# NORTH
execute at @n[tag=atrium_setting_up_codex] positioned ~ ~ ~-3 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_codex] positioned ~ ~ ~-3 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-EAST
execute at @n[tag=atrium_setting_up_codex] positioned ~2 ~ ~-2 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_codex] positioned ~2 ~ ~-2 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# EAST
execute at @n[tag=atrium_setting_up_codex] positioned ~4 ~ ~ run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_codex] positioned ~4 ~ ~ run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-EAST
execute at @n[tag=atrium_setting_up_codex] positioned ~2 ~ ~2 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_codex] positioned ~2 ~ ~2 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH
execute at @n[tag=atrium_setting_up_codex] positioned ~ ~ ~3 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_codex] positioned ~ ~ ~3 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-WEST
execute at @n[tag=atrium_setting_up_codex] positioned ~-2 ~ ~2 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_codex] positioned ~-2 ~ ~2 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# WEST
execute at @n[tag=atrium_setting_up_codex] positioned ~-4 ~ ~ run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_codex] positioned ~-4 ~ ~ run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-WEST
execute at @n[tag=atrium_setting_up_codex] positioned ~-2 ~ ~-2 run summon glow_item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["atrium_crafting_slot"]}
execute at @n[tag=atrium_setting_up_codex] positioned ~-2 ~ ~-2 run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
tag @n[tag=atrium_setting_up_codex] remove atrium_setting_up_codex