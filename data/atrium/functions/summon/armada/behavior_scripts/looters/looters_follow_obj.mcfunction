# Set the Patrol X, Y, and Z of one random raider that is currently hunting to their target (the nearest armada_obj).
#
# Has to be limited to 1
execute as @e[tag=looting_party_leader] store result entity @s PatrolTarget.X int 1 run data get entity @e[limit=1,sort=nearest,tag=armada_obj] Pos[0] 1
execute as @e[tag=looting_party_leader] store result entity @s PatrolTarget.Y int 1 run data get entity @e[limit=1,sort=nearest,tag=armada_obj] Pos[1] 1
execute as @e[tag=looting_party_leader] store result entity @s PatrolTarget.Z int 1 run data get entity @e[limit=1,sort=nearest,tag=armada_obj] Pos[2] 1
#
# The hunter who got the scent tells their friends (execute as all hunters to get around limit=1; target is the nearest one with the scent)
execute as @e[tag=looting_party_leader] store result entity @s PatrolTarget.X int 1 run data get entity @e[tag=looting_party_leader,sort=nearest,limit=1] PatrolTarget.X 1
execute as @e[tag=looting_party_leader] store result entity @s PatrolTarget.Y int 1 run data get entity @e[tag=looting_party_leader,sort=nearest,limit=1] PatrolTarget.Y 1
execute as @e[tag=looting_party_leader] store result entity @s PatrolTarget.Z int 1 run data get entity @e[tag=looting_party_leader,sort=nearest,limit=1] PatrolTarget.Z 1
#
# If the captain is within 3 blocks of the objective point, if its a marker, remove it.
execute at @e[tag=looting_party_leader] as @e[tag=armada_obj,distance=..3,type=minecraft:marker] run kill @s
#
# Note: If they run out of objective points, the patrol will go where they please as normal.
# 
# Run again in 10 seconds if an event is still going on
execute if entity @a[tag=event] run schedule function atrium:summon/armada/behavior_scripts/looters/looters_follow_obj 10s
