# Rewire one Haywire Golem part 2
#
# Reset golem follow range.
execute at @a[tag=rewire_temp] run attribute @e[limit=1,distance=..5,tag=haywire_golem] generic.follow_range base set 16.0
#
# Remove haywire_golem tag.
execute at @a[tag=rewire_temp] run tag @e[limit=1,distance=..5,tag=haywire_golem] remove haywire_golem
#
# Revoke advancement for future use.
advancement revoke @a[tag=rewire_temp] only atrium:triggers/treasure/rewire_tool
#
# Remove temp tag.
tag @a[tag=rewire_temp] remove rewire_temp