# Swaps out items for trades
# (Loot tables are always checking for the previous level)
# Level 2
execute if data entity @s {Inventory:[{tag:{atrium_buy_2_redstone_torch:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:16,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:redstone_torch",Count:2b}}
# Level 2 or 3
execute if data entity @s {Inventory:[{tag:{atrium_sell_8_nether_quartz:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:12,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:quartz",Count:8b},sell:{id:"minecraft:emerald",Count:1b}}
execute if data entity @s {Inventory:[{tag:{atrium_buy_1_piston:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:16,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:piston",Count:1b}}
execute if data entity @s {Inventory:[{tag:{atrium_buy_1_note_block:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:16,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:note_block",Count:1b}}
# Level 3
execute if data entity @s {Inventory:[{tag:{atrium_buy_1_sticky_piston:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:sticky_piston",Count:1b}}
execute if data entity @s {Inventory:[{tag:{atrium_buy_1_redstone_repeater:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:repeater",Count:1b}}
execute if data entity @s {Inventory:[{tag:{atrium_buy_1_redstone_comparator:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:comparator",Count:1b}}
execute if data entity @s {Inventory:[{tag:{atrium_buy_1_hopper:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:hopper",Count:1b}}
execute if data entity @s {Inventory:[{tag:{atrium_buy_1_dropper:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:dropper",Count:1b}}
execute if data entity @s {Inventory:[{tag:{atrium_buy_1_dispenser:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:dispenser",Count:1b}}
# Level 4
execute if data entity @s {Inventory:[{tag:{atrium_sell_1_sculk_sensor:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:sculk_sensor",Count:1b},sell:{id:"minecraft:emerald",Count:4b}}
execute if data entity @s {Inventory:[{tag:{atrium_buy_1_observer:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:observer",Count:1b}}
execute if data entity @s {Inventory:[{tag:{atrium_buy_8_rail:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:rail",Count:8b}}
# Level 4 or 5
execute if data entity @s {Inventory:[{tag:{atrium_sell_1_tnt:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:tnt",Count:1b},sell:{id:"minecraft:emerald",Count:3b}}
# Level 5
execute if data entity @s {Inventory:[{tag:{atrium_buy_4_powered_rail:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:16,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:powered_rail",Count:4b}}
execute if data entity @s {Inventory:[{tag:{atrium_sell_12_copper_ingot:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:8,xp:4,priceMultiplier:0.05f,buy:{id:"minecraft:copper_ingot",Count:1b},sell:{id:"minecraft:emerald",Count:1b}}