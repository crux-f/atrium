# Increase bounty level counter by 1 (attacks get more severe over time with more chances for dangerous enemies)
scoreboard players add @s illager_bounty_level 1
#
# Summon marker at player
execute at @s run summon marker ~ ~ ~ {Tags:["hunting_party_spawn"],CustomName:'{"text":"Hunting Party Spawn Point","color":"red"}'}
#
# If the bounty level counter is 5 or higher, there is a 50% chance of a second hunting party.
execute if entity @s[scores={illager_bounty_level=5..},predicate=atrium:percentage_chances/0.50_p] run execute at @s run summon marker ~ ~ ~ {Tags:["hunting_party_spawn"],CustomName:'{"text":"Hunting Party Spawn Point","color":"red"}'}
#
# If the bounty level counter is 10 or higher, there is a 50% chance of a third hunting party.
execute if entity @s[scores={illager_bounty_level=10..},predicate=atrium:percentage_chances/0.50_p] run execute at @s run summon marker ~ ~ ~ {Tags:["hunting_party_spawn"],CustomName:'{"text":"Hunting Party Spawn Point","color":"red"}'}
#
# Randomly pick a place 2-300 blocks away to teleport it to
spreadplayers ~ ~ 200 300 under 120 false @e[tag=hunting_party_spawn]
#
# At each marker, summon the hunting party
execute at @e[tag=hunting_party_spawn] run function atrium:triggers/random_events/summon_hunting_party
#
# Reset the timer
scoreboard players set @s illager_player_bounty_timer 0
#
# Revoke advancement to all for re-trigger
advancement revoke @s only atrium:triggers/random_events/illager_bounty_timer_end
