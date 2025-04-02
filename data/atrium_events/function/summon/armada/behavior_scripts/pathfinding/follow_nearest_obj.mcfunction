# Set the Patrol X, Y, and Z of one random raider that is currently hunting to their target (the nearest armada_obj).
#
# Has to be limited to 1
execute as @e[type=pillager,tag=atrium_objective_leader] store result entity @s patrol_target[0] int 1 at @s run data get entity @n[tag=atrium_armada_obj,type=minecraft:marker] Pos[0] 1
execute as @e[type=pillager,tag=atrium_objective_leader] store result entity @s patrol_target[1] int 1 at @s run data get entity @n[tag=atrium_armada_obj,type=minecraft:marker] Pos[1] 1
execute as @e[type=pillager,tag=atrium_objective_leader] store result entity @s patrol_target[2] int 1 at @s run data get entity @n[tag=atrium_armada_obj,type=minecraft:marker] Pos[2] 1
#
# The hunter who got the scent tells their friends (execute as all hunters to get around limit=1; target is the nearest one with the scent)
# execute at @e[type=pillager,tag=atrium_objective_leader] as @e[type=pillager,tag=atrium_objective_follower,distance=..8] store result entity @s patrol_target[0] int 1 run data get entity @n[tag=atrium_objective_leader,distance=..8,type=minecraft:pillager] patrol_target[0] 1
# execute at @e[type=pillager,tag=atrium_objective_leader] as @e[type=pillager,tag=atrium_objective_follower,distance=..8] store result entity @s patrol_target[1] int 1 run data get entity @n[tag=atrium_objective_leader,distance=..8,type=minecraft:pillager] patrol_target[1] 1
# execute at @e[type=pillager,tag=atrium_objective_leader] as @e[type=pillager,tag=atrium_objective_follower,distance=..8] store result entity @s patrol_target[2] int 1 run data get entity @n[tag=atrium_objective_leader,distance=..8,type=minecraft:pillager] patrol_target[2] 1
#
# If an Engineer is here to build something, start building it.
execute at @e[type=pillager,tag=atrium_objective_leader] if entity @n[tag=atrium_armada_obj,tag=atrium_sky_cannon_site,distance=..12,type=minecraft:marker] as @n[type=pillager,tag=atrium_armada_engineer,distance=..10] at @s run function atrium_events:structures/armada/siege/sky_cannon/initialize_construction
# If the captain is within 7 blocks of the objective point, if its a marker, remove it.
execute at @e[type=pillager,tag=atrium_objective_leader] as @n[tag=atrium_armada_obj,distance=..7,type=minecraft:marker] run kill @s
#
# Note: If they run out of objective points, the patrol will go where they please as per vanilla patrol behavior.
# 
# Run again in 10 seconds if an event is still going on
execute if entity @a[tag=event] run schedule function atrium_events:summon/armada/behavior_scripts/pathfinding/follow_nearest_obj 10s
