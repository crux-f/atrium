# Triggered by using various items with XP bonuses to do certain things.
#
# Weapons with +5 XP From Kills
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_has_kill_xp_bonus:1b,atrium_xp_bonus:5}}}}] run xp add @s 5 points
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_has_kill_xp_bonus:1b,atrium_xp_bonus:5}}}}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.25 1 0.1
# Items with XP From Trades
# Head
execute if entity @s[nbt={equipment:{head:{components:{"minecraft:custom_data":{atrium_has_trade_xp_bonus:1b,atrium_xp_bonus:3}}}}}] run xp add @s 3 points
execute if entity @s[nbt={equipment:{head:{components:{"minecraft:custom_data":{atrium_has_trade_xp_bonus:1b,atrium_xp_bonus:5}}}}}] run xp add @s 5 points
execute if entity @s[nbt={equipment:{head:{components:{"minecraft:custom_data":{atrium_has_trade_xp_bonus:1b}}}}}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.25 1 0.1
# Off Hand
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{atrium_has_trade_xp_bonus:1b,atrium_xp_bonus:2}}}}}] run xp add @s 2 points
execute if entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{atrium_has_trade_xp_bonus:1b}}}}}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.25 1 0.1