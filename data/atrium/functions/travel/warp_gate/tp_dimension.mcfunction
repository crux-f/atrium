# Tag the infusion circle you're currently using with fx_travel.
tag @e[distance=..5,tag=infusion] add fx_travel
# Tag a random player within 6 blocks who has 5 levels or more.
execute at @e[tag=fx_travel,distance=..5] as @r[distance=..6,level=5..] run tag @s add gate_user
# Remove 5 levels from that tagged player
execute as @a[tag=gate_user] run xp add @s -5 levels 
#
# Check WARP GATE for OVERWORLD Gatestone; IF there was a gate_user, run the dimension tp script for that specific stone/dimension.
execute positioned ~-5 ~5 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_overworld:1b}}}] if entity @a[tag=gate_user,distance=..15] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_overworld:1b}}}] if entity @a[tag=gate_user,distance=..15] run execute at @e[tag=infusion] run function atrium:travel/warp_gate/overworld_tp
#
# Check WARP GATE for NETHER Gatestone; IF there was a gate_user, run the dimension tp script for that specific stone/dimension.
execute positioned ~-5 ~5 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_nether:1b}}}] if entity @a[tag=gate_user,distance=..15] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_nether:1b}}}] if entity @a[tag=gate_user,distance=..15] run execute at @e[tag=infusion] run function atrium:travel/warp_gate/nether_tp
#
# Check WARP GATE for DEPTHS Gatestone; IF there was a gate_user, run the dimension tp script for that specific stone/dimension.
execute positioned ~-5 ~5 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_depths:1b}}}] if entity @a[tag=gate_user,distance=..15] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_depths:1b}}}] if entity @a[tag=gate_user,distance=..15] run execute at @e[tag=infusion] run function atrium:travel/warp_gate/depths_tp
#
# Check WARP GATE for MERIDIAN Gatestone; IF there was a gate_user, run the dimension tp script for that specific stone/dimension.
execute positioned ~-5 ~5 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_meridian:1b}}}] if entity @a[tag=gate_user,distance=..15] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_meridian:1b}}}] if entity @a[tag=gate_user,distance=..15] run execute at @e[tag=infusion] run function atrium:travel/warp_gate/meridian_tp
#
# Check WARP GATE for FAR LANDS Gatestone; IF there was a gate_user, run the dimension tp script for that specific stone/dimension.
execute positioned ~-5 ~5 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_thefarlands:1b}}}] if entity @a[tag=gate_user,distance=..15] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-5 ~5 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_thefarlands:1b}}}] if entity @a[tag=gate_user,distance=..15] run execute at @e[tag=infusion] run function atrium:travel/warp_gate/thefarlands_tp
#
# Remove tag from the gate_user
tag @a[distance=..15] remove gate_user
