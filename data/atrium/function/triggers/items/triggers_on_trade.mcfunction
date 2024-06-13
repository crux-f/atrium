# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/triggers_on_trade
#
# Extra XP from kills
execute if entity @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_data":{atrium_has_trade_xp_bonus:1b,atrium_xp_bonus:5}}}]}] run function atrium:misc/xp_calculators/bonus/extra_xp_from_items