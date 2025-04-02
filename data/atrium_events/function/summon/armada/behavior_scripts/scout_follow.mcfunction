# Set the Patrol X, Y, and Z of one random raider that is currently hunting to their target (random event participant).
#
execute unless entity @a[tag=atrium_scout_target,gamemode=survival] run tag @r[tag=event,gamemode=survival] add atrium_scout_target
# Has to be limited to 1
execute as @e[tag=atrium_scouting_party_leader] store result entity @s patrol_target[0] int 1 run data get entity @p[tag=atrium_scout_target] Pos[0] 1
execute as @e[tag=atrium_scouting_party_leader] store result entity @s patrol_target[1] int 1 run data get entity @p[tag=atrium_scout_target] Pos[1] 1
execute as @e[tag=atrium_scouting_party_leader] store result entity @s patrol_target[2] int 1 run data get entity @p[tag=atrium_scout_target] Pos[2] 1
#
# The hunter who got the scent tells their friends (execute as all hunters to get around limit=1; target is the nearest one with the scent)
execute as @e[tag=atrium_scouting_party_leader] store result entity @s patrol_target[0] int 1 run data get entity @e[tag=atrium_scouting_party_leader,sort=nearest,limit=1] patrol_target[0] 1
execute as @e[tag=atrium_scouting_party_leader] store result entity @s patrol_target[1] int 1 run data get entity @e[tag=atrium_scouting_party_leader,sort=nearest,limit=1] patrol_target[1] 1
execute as @e[tag=atrium_scouting_party_leader] store result entity @s patrol_target[2] int 1 run data get entity @e[tag=atrium_scouting_party_leader,sort=nearest,limit=1] patrol_target[2] 1
#
# Tell the hunters to start patrolling.
# execute as @e[tag=scouting_party_leader] run data merge entity @s {PatrolLeader:1b,Patrolling:1b}
#
# Spooky following sound sometimes
execute at @e[tag=atrium_scouting_party_leader] if predicate atrium:percentage_chances/0.25_p run playsound minecraft:item.spyglass.use player @a[tag=atrium_scout_target,distance=..50] ~ ~ ~ 1 1 1
execute at @e[tag=atrium_scouting_party_leader] if predicate atrium:percentage_chances/0.25_p run playsound minecraft:item.spyglass.stop_using player @a[tag=atrium_scout_target,distance=..50] ~ ~ ~ 1 1 1
tag @a[tag=atrium_scout_target] remove atrium_scout_target
# 
# Run again in 1 second if an event is still going on
execute if entity @a[tag=event] run schedule function atrium_events:summon/armada/behavior_scripts/scout_follow 10s
