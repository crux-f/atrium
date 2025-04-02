# Summon 1 Armada Crusader, 3 Armada Looters
# (Looters are always trying to hide)
#
function atrium_events:summon/armada/single/looting_leader_crusader
function atrium_events:summon/armada/single/summon_armada_looter
function atrium_events:summon/armada/single/summon_armada_looter
#
# leader set
execute as @n[type=#minecraft:raiders,tag=atrium_looting_party_leader,distance=..1] run data merge entity @s {PatrolLeader:1b,Patrolling:1b}
# Start behavior script if there's an event happening (ends when event ends for simplicity)
execute if entity @a[tag=event] run function atrium_events:summon/armada/behavior_scripts/looters/looters_follow_obj