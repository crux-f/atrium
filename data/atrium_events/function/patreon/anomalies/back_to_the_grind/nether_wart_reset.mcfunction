# Revoke to allow retrigger
advancement revoke @s only atrium:patreon/back_to_the_grind/nether_wart_reward
#
# Clear item and replace it with an untagged version
clear @s minecraft:nether_wart[minecraft:custom_data={freshly_harvested:1b}]
give @s minecraft:nether_wart 1
#
# 50% chance of XP orb worth 2 points
execute at @s if predicate atrium:percentage_chances/0.50_p run summon experience_orb ~ ~ ~ {Value:2}
#
# 50% chance of XP orb worth 2 points
execute at @s if predicate atrium:percentage_chances/0.50_p run summon experience_orb ~ ~ ~ {Value:2}
#
# Giving more XP since you cant use bone meal on this and its rarer

