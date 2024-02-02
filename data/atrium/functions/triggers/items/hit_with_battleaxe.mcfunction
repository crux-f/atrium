# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/hit_with_battleaxe
#
# Deals an extra 3 damage if wielded in both hands (nothing in off hand)
execute if predicate atrium:player/inventory/holding_nothing_offhand at @s anchored eyes positioned ^ ^ ^1.5 at @e[limit=1,nbt=!{HurtTime:0s},distance=..4] run damage @e[limit=1,nbt=!{HurtTime:0s},sort=nearest] 3 atrium:extra_weapon_damage by @s
# execute at @s if entity @e[distance=..5,nbt=!{HurtTime:0s}] run say YES