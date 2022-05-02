# Revoke to allow retrigger
advancement revoke @s only atrium:patreon/back_to_the_grind/wheat_reward
#
# Clear item and replace it with an untagged version
clear @s minecraft:wheat{freshly_harvested:1b}
give @s minecraft:wheat 1
#
# 50% chance of XP orb worth 1 point
execute at @s if predicate atrium:percentage_chances/0.50_p run summon experience_orb ~ ~ ~ {Value:1}
#
# 50% chance of XP orb worth 1 point
execute at @s if predicate atrium:percentage_chances/0.50_p run summon experience_orb ~ ~ ~ {Value:1}

