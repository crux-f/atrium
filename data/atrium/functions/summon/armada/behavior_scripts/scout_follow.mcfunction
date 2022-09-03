# Set the Patrol X, Y, and Z of one random raider that is currently hunting to their target (random event participant).
#
execute unless entity @a[tag=scout_target,gamemode=survival] run tag @r[tag=event,gamemode=survival] add scout_target
# Has to be limited to 1
execute as @e[tag=scouting_party_leader] store result entity @s PatrolTarget.X int 1 run data get entity @p[tag=scout_target] Pos[0] 1
execute as @e[tag=scouting_party_leader] store result entity @s PatrolTarget.Y int 1 run data get entity @p[tag=scout_target] Pos[1] 1
execute as @e[tag=scouting_party_leader] store result entity @s PatrolTarget.Z int 1 run data get entity @p[tag=scout_target] Pos[2] 1
#
# The hunter who got the scent tells their friends (execute as all hunters to get around limit=1; target is the nearest one with the scent)
execute as @e[tag=scouting_party_leader] store result entity @s PatrolTarget.X int 1 run data get entity @e[tag=scouting_party_leader,sort=nearest,limit=1] PatrolTarget.X 1
execute as @e[tag=scouting_party_leader] store result entity @s PatrolTarget.Y int 1 run data get entity @e[tag=scouting_party_leader,sort=nearest,limit=1] PatrolTarget.Y 1
execute as @e[tag=scouting_party_leader] store result entity @s PatrolTarget.Z int 1 run data get entity @e[tag=scouting_party_leader,sort=nearest,limit=1] PatrolTarget.Z 1
#
# Tell the hunters to start patrolling.
# execute as @e[tag=scouting_party_leader] run data merge entity @s {PatrolLeader:1b,Patrolling:1b}
#
# Spooky following sound sometimes
execute at @e[tag=scouting_party_leader] if predicate atrium:percentage_chances/0.25_p run playsound minecraft:item.spyglass.use player @a[tag=scout_target,distance=..50] ~ ~ ~ 1 1 1
execute at @e[tag=scouting_party_leader] if predicate atrium:percentage_chances/0.25_p run playsound minecraft:item.spyglass.stop_using player @a[tag=scout_target,distance=..50] ~ ~ ~ 1 1 1
tag @a[tag=scout_target] remove scout_target
# 
# Run again in 1 second if an event is still going on
execute if entity @a[tag=event] run schedule function atrium:summon/armada/behavior_scripts/scout_follow 10s
