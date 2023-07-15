# For each level: Give the specialist an item which we use to determine which new trade they got
# (Using loot tables for all the conditions)
# Then manually level them up (so they don't get new vanilla trades)
#
# Novice (1) -> Apprentice (2) | 2 new trades | Last XP at lv: 9
execute if data entity @s {VillagerData:{level:1}} if data entity @s {Xp:9} run loot replace entity @s villager.0 loot atrium:technical/specialist_new_trade
execute if data entity @s {VillagerData:{level:1}} if data entity @s {Xp:9} run loot replace entity @s villager.1 loot atrium:technical/specialist_new_trade
execute if data entity @s {VillagerData:{level:1}} if data entity @s {Xp:9} run effect give @s regeneration 25 0 false
execute if data entity @s {VillagerData:{level:1}} if data entity @s {Xp:9} run data modify entity @s VillagerData.level set value 2
# Apprentice (2) -> Journeyman (3) | 2 new trades | Last XP at lv: 69
execute if data entity @s {VillagerData:{level:2}} if data entity @s {Xp:69} run loot replace entity @s villager.0 loot atrium:technical/specialist_new_trade
execute if data entity @s {VillagerData:{level:2}} if data entity @s {Xp:69} run loot replace entity @s villager.1 loot atrium:technical/specialist_new_trade
execute if data entity @s {VillagerData:{level:2}} if data entity @s {Xp:69} run effect give @s regeneration 25 0 false
execute if data entity @s {VillagerData:{level:2}} if data entity @s {Xp:69} run data modify entity @s VillagerData.level set value 3
# Journeyman (3) -> Expert (4) | 2 new trades | Last XP at lv: 149
execute if data entity @s {VillagerData:{level:3}} if data entity @s {Xp:149} run loot replace entity @s villager.0 loot atrium:technical/specialist_new_trade
execute if data entity @s {VillagerData:{level:3}} if data entity @s {Xp:149} run loot replace entity @s villager.1 loot atrium:technical/specialist_new_trade
execute if data entity @s {VillagerData:{level:3}} if data entity @s {Xp:149} run effect give @s regeneration 25 0 false
execute if data entity @s {VillagerData:{level:3}} if data entity @s {Xp:149} run data modify entity @s VillagerData.level set value 4
# Expert (4) -> Master (5) | 1 new trade | Last XP at lv: 249
execute if data entity @s {VillagerData:{level:4}} if data entity @s {Xp:249} run loot replace entity @s villager.0 loot atrium:technical/specialist_new_trade
execute if data entity @s {VillagerData:{level:4}} if data entity @s {Xp:249} run effect give @s regeneration 25 0 false
execute if data entity @s {VillagerData:{level:4}} if data entity @s {Xp:249} run data modify entity @s VillagerData.level set value 5
#
# Swap all the items out for new trades
execute run function atrium:triggers/entity_abilities/villagers/new_trade_swap