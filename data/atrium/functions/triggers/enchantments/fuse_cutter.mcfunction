execute at @s positioned ^ ^ ^3 at @e[limit=1,type=minecraft:creeper,distance=..3,sort=nearest] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 25
execute at @s[nbt={SelectedItem:{tag:{fuse_cutter_lv:1b}}}] positioned ^ ^ ^3 at @e[limit=1,type=minecraft:creeper,distance=..3,sort=nearest] run data merge entity @e[limit=1,type=minecraft:creeper,distance=..3,sort=nearest] {Fuse:40}
execute at @s[nbt={SelectedItem:{tag:{fuse_cutter_lv:2b}}}] positioned ^ ^ ^3 at @e[limit=1,type=minecraft:creeper,distance=..3,sort=nearest] run data merge entity @e[limit=1,type=minecraft:creeper,distance=..3,sort=nearest] {Fuse:60}
execute at @s[nbt={SelectedItem:{tag:{fuse_cutter_lv:3b}}}] positioned ^ ^ ^3 at @e[limit=1,type=minecraft:creeper,distance=..3,sort=nearest] run data merge entity @e[limit=1,type=minecraft:creeper,distance=..3,sort=nearest] {Fuse:70}
advancement revoke @s only atrium:triggers/enchantments/fuse_cutter
