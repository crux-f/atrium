# Remove tag to prevent new hunting party spawns
tag @s remove hunted_by_illagers
#
# Flavor Text
tellraw @s {"text":"The bounty on your head is fulfilled.","italic":true,"color":"gray"}
#
# Reset score
scoreboard players set @s illager_bounty_level 0
#
# Revoke advancement to allow for re-trigger
advancement revoke @s only atrium:triggers/random_events/illager_bounty_fulfilled
