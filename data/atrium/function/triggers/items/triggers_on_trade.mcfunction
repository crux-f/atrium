# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/triggers_on_trade
#
# Extra XP from Trades
# Head
execute if entity @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_data":{atrium_has_trade_xp_bonus:1b}}}]}] run function atrium:misc/xp_calculators/bonus/extra_xp_from_items
# Special
