# Run from atrium:triggers/talk_to_villager if you have never talked to this villager before.
# 
# Tag the villager / trader with "atrium_introduced" to ensure this doesn't run on them again.
tag @s add atrium_introduced
# Unless the villager / trader already has a visible name, give them one.
execute unless data entity @s CustomName run function atrium:triggers/entity_abilities/assign_villager_name