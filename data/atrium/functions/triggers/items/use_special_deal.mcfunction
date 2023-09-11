# Activated by right-clicking on a Wandering Trader with a Special Deal
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/use_special_deal
#
# Let the player know that they can't use a trade agreement on the same person more than once
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,type=minecraft:wandering_trader,sort=nearest,distance=..5] if entity @s[tag=atrium_secret_trade_unlocked] run tellraw @p[gamemode=!spectator] {"text":"(This trader has already unlocked a secret trade.)","italic":true,"color":"red"}
# Failure sound
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,type=minecraft:wandering_trader,sort=nearest,distance=..5] if entity @s[tag=atrium_secret_trade_unlocked] run playsound minecraft:entity.wandering_trader.no player @a[distance=..5] ~ ~ ~ 0.5 1 0.1
# Tag the villager if the villager is a valid target
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,type=minecraft:wandering_trader,sort=nearest,distance=..5] unless entity @s[tag=atrium_secret_trade_unlocked] run tag @s add atrium_signing_agreement
# Success sound
execute at @s if entity @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5] run playsound minecraft:entity.villager.yes player @s ~ ~ ~ 0.5 1 0.1
# Add Secret Trade
# (Same logic as specialists)
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] run loot replace entity @s villager.0 loot atrium:technical/secret_wandering_trade
#
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{tag:{atrium_buy_1_mending_book:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:48b},sell:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:mending",lvl:1s}]}}}
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{tag:{atrium_buy_1_heart_of_the_sea:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:24b},sell:{id:"minecraft:heart_of_the_sea",Count:1b}}
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{tag:{atrium_buy_1_netherite_ingot:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:32b},sell:{id:"minecraft:netherite_ingot",Count:1b}}
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{tag:{atrium_buy_1_totem_of_undying:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:32b},sell:{id:"minecraft:totem_of_undying",Count:1b}}
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{tag:{atrium_buy_1_netherite_upgrade_smithing_template:1}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",Count:12b},sell:{id:"minecraft:netherite_upgrade_smithing_template",Count:1b}}
#
# Consume the Trade Agreement if it was used
execute at @s if entity @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5] run clear @s minecraft:paper{atrium_special_deal:1b} 1
# Remove the tag afterwards & add exclusion tag
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5] run tag @s add atrium_secret_trade_unlocked
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5] run tag @s remove atrium_signing_agreement