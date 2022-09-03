# Rewire one Haywire golem
#
# Reactivate AI
execute at @p[tag=rewire_temp] run data modify entity @e[limit=1,distance=..5,tag=haywire_golem] NoAI set value 0b
#
# Reset follow range
execute at @p[tag=rewire_temp] run attribute @e[limit=1,distance=..5,tag=haywire_golem] generic.follow_range base set 16.0
#
# Remove haywire_golem tag
execute at @p[tag=rewire_temp] run tag @e[limit=1,distance=..5,tag=haywire_golem] remove haywire_golem
#
advancement revoke @p[tag=rewire_temp] only atrium:triggers/treasure/rewire_tool
#
# Remove temp tag
tag @p[tag=rewire_temp] remove rewire_temp
#test
say rewiring golem 2...