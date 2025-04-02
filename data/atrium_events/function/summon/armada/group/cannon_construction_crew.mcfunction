# Special guys with special pathfinding. Need a pre-placed obj point for this to work fully.
#
# Summon 1 Armada Infiltrator and make them the leader of the mission.
function atrium_events:summon/armada/single/infiltrator
tag @n[type=pillager,tag=atrium_armada_infiltrator,distance=..1] add atrium_objective_leader
# Then summon 3 Armada Engineers and add them to the mission.
function atrium_events:summon/armada/single/engineer
function atrium_events:summon/armada/single/engineer
function atrium_events:summon/armada/single/engineer
# Summon 2 more Infiltrators for good measure. Guys tend to get left behind with custom patrols.
function atrium_events:summon/armada/single/infiltrator
function atrium_events:summon/armada/single/infiltrator
# Tell all of them that they're trying to hide (if I've implemented it for that entity).
tag @e[type=pillager,distance=..1,tag=atrium_stealthy] add atrium_currently_hiding
# Important Note: Inserting patrol_target coords ONLY WORKS if all 3 values were set AT THE SAME TIME FIRST.
# In order to accomplish this, I'm setting them to 0 0 0 manually before the follow_nearest_obj script updates them to the target coords.
data modify entity @n[type=pillager,tag=atrium_objective_leader,distance=..1] patrol_target set value [I;0,0,0]
#
# Start stealth manager if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/pathfinding/stealth_manager
# Start the simple objective manager
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/pathfinding/follow_nearest_obj
#
# AFTER giving the leader their patrol target, set up the others' patrol stuff.
# I have no idea why but this has to be this way or the patrol group won't form.
data merge entity @n[type=pillager,tag=atrium_objective_leader,distance=..1] {PatrolLeader:1b,Patrolling:1b}