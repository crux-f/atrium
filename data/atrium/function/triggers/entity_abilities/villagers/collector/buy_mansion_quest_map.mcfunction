# Replace the undefined map with the defined one
clear @s *[minecraft:custom_data~{atrium_map_resolved:0b}]
loot give @s loot atrium:technical/specialists/collector/give_mansion_quest_map
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/villagers/collector/buy_mansion_quest_map