# +1% chance of being marked for a bounty for each raid win (starts at 5%, caps at 25%). This triggers whenever a player gains Bad Omen while in a Pillager Outpost.
execute if entity @s[scores={raid_wins=1}] if predicate atrium:percentage_chances/0.06_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=2}] if predicate atrium:percentage_chances/0.07_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=3}] if predicate atrium:percentage_chances/0.08_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=4}] if predicate atrium:percentage_chances/0.09_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=5}] if predicate atrium:percentage_chances/0.10_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=6}] if predicate atrium:percentage_chances/0.11_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=7}] if predicate atrium:percentage_chances/0.12_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=8}] if predicate atrium:percentage_chances/0.13_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=9}] if predicate atrium:percentage_chances/0.14_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=10}] if predicate atrium:percentage_chances/0.15_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=11}] if predicate atrium:percentage_chances/0.16_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=12}] if predicate atrium:percentage_chances/0.17_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=13}] if predicate atrium:percentage_chances/0.18_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=14}] if predicate atrium:percentage_chances/0.19_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=15}] if predicate atrium:percentage_chances/0.20_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=16}] if predicate atrium:percentage_chances/0.21_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=17}] if predicate atrium:percentage_chances/0.22_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=18}] if predicate atrium:percentage_chances/0.23_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=19}] if predicate atrium:percentage_chances/0.24_p run tag @s add hunted_by_illagers
execute if entity @s[scores={raid_wins=20}] if predicate atrium:percentage_chances/0.25_p run tag @s add hunted_by_illagers
#
#
# 100% chance if you somehow got the immediate_bounty tag.
execute if entity @s[tag=immediate_bounty] run tag @s add hunted_by_illagers
#
# (Remove tag so it doesnt happen again)
execute if entity @s[tag=immediate_bounty] run tag @s remove immediate_bounty
#
execute if entity @a[tag=hunted_by_illagers] run scoreboard players set @s illager_player_bounty_timer 0
# Revoke advancement for retrigger
advancement revoke @s only atrium:triggers/random_events/illager_bounty_on_player
