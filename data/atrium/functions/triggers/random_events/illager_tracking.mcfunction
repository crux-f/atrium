# Set the Patrol X, Y, and Z of one random raider that is currently hunting to their target (the player who got this advancement).
#
# Has to be limited to 1
execute as @s store result entity @e[tag=scent,sort=random,limit=1] PatrolTarget.X int 1 run data get entity @s Pos[0] 1
execute as @s store result entity @e[tag=scent,sort=random,limit=1] PatrolTarget.Y int 1 run data get entity @s Pos[1] 1
execute as @s store result entity @e[tag=scent,sort=random,limit=1] PatrolTarget.Z int 1 run data get entity @s Pos[2] 1
#
# The hunter who got the scent tells their friends (execute as all hunters to get around limit=1; target is the nearest one with the scent)
execute as @e[tag=hunting] store result entity @s PatrolTarget.X int 1 run data get entity @e[tag=scent,sort=nearest,limit=1] PatrolTarget.X 1
execute as @e[tag=hunting] store result entity @s PatrolTarget.Y int 1 run data get entity @e[tag=scent,sort=nearest,limit=1] PatrolTarget.Y 1
execute as @e[tag=hunting] store result entity @s PatrolTarget.Z int 1 run data get entity @e[tag=scent,sort=nearest,limit=1] PatrolTarget.Z 1
#
# Tell the hunters to start patrolling.
execute as @e[tag=hunting] run data merge entity @s {Patrolling:1b}
#
# Revoke advancement to allow retrigger (locate advancements trigger once every 10 seconds).
advancement revoke @s only atrium:triggers/random_events/illager_tracking
