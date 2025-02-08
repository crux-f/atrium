# Created by a naturally generated arrow machine
setblock ~ ~1 ~ air
setblock ~ ~ ~ air
kill @e[distance=..5,type=minecraft:arrow,tag=atrium_technical_arrow]
place template atrium_events:armada/airships/copper_transport_appear_s_0 ~ ~ ~
schedule function atrium_events:summon/armada/vehicles/worldgen/wg_copper_transport_initial_crew 30t
execute if predicate atrium:percentage_chances/0.15_p run function atrium_events:summon/armada/vehicles/worldgen/wg_warp_in_fx