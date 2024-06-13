# Runs from player_check_each_second if the player has a bounty tag on them.
#
# Note: Bounty tag is removed if player is killed by a hunting entity.
#
# Set the PatrolTarget coordinates to the player's coordinates (patrol leader only)
execute at @e[type=#minecraft:raiders,tag=atrium_hunting] store result entity @e[type=#minecraft:raiders,tag=atrium_hunting,limit=1,sort=nearest,nbt={PatrolLeader:1b}] PatrolTarget.X int 1 run data get entity @s Pos[0] 1
execute at @e[type=#minecraft:raiders,tag=atrium_hunting] store result entity @e[type=#minecraft:raiders,tag=atrium_hunting,limit=1,sort=nearest,nbt={PatrolLeader:1b}] PatrolTarget.Y int 1 run data get entity @s Pos[1] 1
execute at @e[type=#minecraft:raiders,tag=atrium_hunting] store result entity @e[type=#minecraft:raiders,tag=atrium_hunting,limit=1,sort=nearest,nbt={PatrolLeader:1b}] PatrolTarget.Z int 1 run data get entity @s Pos[2] 1
#
# The hunter who got the scent tells their friends (execute as all hunters to get around limit=1; target is the leader)
execute as @e[type=#minecraft:raiders,tag=atrium_hunting,nbt=!{PatrolLeader:1b}] store result entity @s PatrolTarget.X int 1 run data get entity @e[type=#minecraft:raiders,tag=atrium_hunting,limit=1,sort=nearest,nbt={PatrolLeader:1b}] PatrolTarget.X 1
execute as @e[type=#minecraft:raiders,tag=atrium_hunting,nbt=!{PatrolLeader:1b}] store result entity @s PatrolTarget.Y int 1 run data get entity @e[type=#minecraft:raiders,tag=atrium_hunting,limit=1,sort=nearest,nbt={PatrolLeader:1b}] PatrolTarget.Y 1
execute as @e[type=#minecraft:raiders,tag=atrium_hunting,nbt=!{PatrolLeader:1b}] store result entity @s PatrolTarget.Z int 1 run data get entity @e[type=#minecraft:raiders,tag=atrium_hunting,limit=1,sort=nearest,nbt={PatrolLeader:1b}] PatrolTarget.Z 1
# Tell the hunters to start patrolling.
execute as @e[tag=atrium_hunting] run data merge entity @s {Patrolling:1b}