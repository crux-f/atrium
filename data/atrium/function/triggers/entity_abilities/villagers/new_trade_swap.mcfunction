# Using items to randomize effectively basically
# Breaking this down by specialist to make organization better
execute if entity @s[tag=atrium_specialist_alchemist] run function atrium:triggers/entity_abilities/villagers/alchemist_new_trade_swap
execute if entity @s[tag=atrium_specialist_alienist] run function atrium:triggers/entity_abilities/villagers/alienist_new_trade_swap
execute if entity @s[tag=atrium_specialist_architect] run function atrium:triggers/entity_abilities/villagers/architect_new_trade_swap
execute if entity @s[tag=atrium_specialist_artist] run function atrium:triggers/entity_abilities/villagers/artist_new_trade_swap
execute if entity @s[tag=atrium_specialist_beekeeper] run function atrium:triggers/entity_abilities/villagers/beekeeper_new_trade_swap
execute if entity @s[tag=atrium_specialist_chef] run function atrium:triggers/entity_abilities/villagers/chef_new_trade_swap
execute if entity @s[tag=atrium_specialist_collector] run function atrium:triggers/entity_abilities/villagers/collector_new_trade_swap
execute if entity @s[tag=atrium_specialist_enchanter] run function atrium:triggers/entity_abilities/villagers/enchanter_new_trade_swap
execute if entity @s[tag=atrium_specialist_engineer] run function atrium:triggers/entity_abilities/villagers/engineer_new_trade_swap
execute if entity @s[tag=atrium_specialist_merchant] run function atrium:triggers/entity_abilities/villagers/merchant_new_trade_swap
execute if entity @s[tag=atrium_specialist_hunter] run function atrium:triggers/entity_abilities/villagers/hunter_new_trade_swap
execute if entity @s[tag=atrium_specialist_tinker] run function atrium:triggers/entity_abilities/villagers/tinker_new_trade_swap
execute if entity @s[tag=atrium_specialist_warrior] run function atrium:triggers/entity_abilities/villagers/warrior_new_trade_swap
#
# Remove items afterwards
# Villagers don't have slots unless they have enough items to need those slots, so I have to check all of em.
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_specialist_trade:1b}}}]} run item replace entity @s villager.0 with minecraft:air
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_specialist_trade:1b}}}]} run item replace entity @s villager.6 with minecraft:air
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_specialist_trade:1b}}}]} run item replace entity @s villager.5 with minecraft:air
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_specialist_trade:1b}}}]} run item replace entity @s villager.4 with minecraft:air
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_specialist_trade:1b}}}]} run item replace entity @s villager.3 with minecraft:air
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_specialist_trade:1b}}}]} run item replace entity @s villager.2 with minecraft:air
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_specialist_trade:1b}}}]} run item replace entity @s villager.1 with minecraft:air
execute if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_specialist_trade:1b}}}]} run item replace entity @s villager.0 with minecraft:air