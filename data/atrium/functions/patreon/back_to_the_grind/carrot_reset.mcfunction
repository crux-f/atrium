# Revoke to allow retrigger
advancement revoke @s only atrium:patreon/back_to_the_grind/carrot_reward
#
# Clear item and replace it with an untagged version
clear @s minecraft:carrot{freshly_harvested:1b}
give @s minecraft:carrot 1
#
# 50% chance of XP orb worth 2 points
execute at @s if predicate atrium:percentage_chances/0.50_p run summon experience_orb ~ ~ ~ {Value:2}
