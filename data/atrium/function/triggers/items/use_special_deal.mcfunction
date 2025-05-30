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
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_buy_1_mending_storybook:1b}}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",count:48},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:lore":['{"text":"This precious tome contains"}','{"text":"a story of death and rebirth."}','{"text":"Its magic is very rare,"}','{"text":"and it is considered a"}','{"text":"great treasure."}'],"minecraft:stored_enchantments":{"minecraft:mending":1},"minecraft:rarity":"rare","minecraft:custom_data":{atrium_mending_storybook:1b}}}}
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_buy_1_heart_of_the_sea:1b}}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",count:24},sell:{id:"minecraft:heart_of_the_sea",count:1}}
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_buy_1_netherite_ingot:1b}}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:netherite_ingot",count:1}}
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_buy_1_totem_of_undying:1b}}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:totem_of_undying",count:1}}
execute at @s as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5,type=minecraft:wandering_trader] if data entity @s {Inventory:[{components:{"minecraft:custom_data":{atrium_buy_1_netherite_upgrade_smithing_template:1b}}}]} run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,xp:0,priceMultiplier:0.05f,buy:{id:"minecraft:emerald",count:12},sell:{id:"minecraft:netherite_upgrade_smithing_template",count:1}}
#
# Consume the Trade Agreement if it was used
execute at @s if entity @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5] run clear @s minecraft:paper[minecraft:custom_data={atrium_special_deal:1b}] 1
# Remove the tag afterwards & add exclusion tag
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5] run tag @s add atrium_secret_trade_unlocked
execute at @s positioned ^ ^ ^1.5 as @e[limit=1,tag=atrium_signing_agreement,sort=nearest,distance=..5] run tag @s remove atrium_signing_agreement