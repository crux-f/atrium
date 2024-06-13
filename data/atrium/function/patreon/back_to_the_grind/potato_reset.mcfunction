# Revoke to allow retrigger
advancement revoke @s only atrium:patreon/back_to_the_grind/potato_reward
#
# Clear item and replace it with an untagged version
clear @s minecraft:potato[minecraft:custom_data={freshly_harvested:1b}]
give @s minecraft:potato 1
#
# 50% chance of XP orb worth 1 point
execute at @s if predicate atrium:percentage_chances/0.50_p run summon experience_orb ~ ~ ~ {Value:2}
