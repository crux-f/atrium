# Deactivate all Haywire Golems
#
# Set AngerTime to 0
data merge entity @s {AngerTime:0,Attributes:[{Name:"generic.follow_range", Base:16.0}]}
#
# Remove haywire_golem tag
tag @s remove haywire_golem
#test
say resetting golems...