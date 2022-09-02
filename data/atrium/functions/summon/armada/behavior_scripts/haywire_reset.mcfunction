# Deactivate all Haywire Golems
#
# Set AngerTime to 0
execute as @e[tag=haywire_golem] run data merge entity @s {AngerTime:0,Attributes:[{Name:"generic.follow_range", Base:16.0}]}
#
# Remove haywire_golem tag
execute run tag @e[tag=haywire_golem] remove haywire_golem
