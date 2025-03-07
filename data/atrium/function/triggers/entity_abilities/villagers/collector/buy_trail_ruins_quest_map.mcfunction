# Replace the undefined map with the defined one
clear @s *[minecraft:custom_data~{atrium_map_resolved:0b}]
loot give @s loot atrium:technical/specialists/collector/give_trail_ruins_quest_map
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/entity_abilities/villagers/collector/buy_trail_ruins_quest_map