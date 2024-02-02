# Triggered by various items with XP bonuses to doing certain things.
#
# Weapons with +5 XP From Kills
execute if entity @s[nbt={SelectedItem:{tag:{atrium_has_kill_xp_bonus:1b,atrium_xp_bonus:5}}}] run xp add @s 5 points
execute if entity @s[nbt={SelectedItem:{tag:{atrium_has_kill_xp_bonus:1b,atrium_xp_bonus:5}}}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.25 1 0.1
# Items with +5 XP From Trades
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{atrium_has_trade_xp_bonus:1b,atrium_xp_bonus:5}}]}] run xp add @s 5 points
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{atrium_has_trade_xp_bonus:1b,atrium_xp_bonus:5}}]}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.25 1 0.1