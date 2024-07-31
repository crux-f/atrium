# Enchantment particles
execute at @s anchored eyes positioned ^ ^ ^2 at @e[limit=1,nbt=!{HurtTime:0s},distance=..4,sort=nearest] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 15
# Sculk Particles
execute at @s anchored eyes positioned ^ ^ ^2 at @e[limit=1,nbt=!{HurtTime:0s},distance=..4,sort=nearest] run particle minecraft:sculk_charge{roll:0} ~ ~1 ~ 0.25 0.5 0.25 0 10
# Extra damage.
execute at @s anchored eyes positioned ^ ^ ^2 at @e[limit=1,nbt=!{HurtTime:0s},distance=..4,sort=nearest] run damage @e[limit=1,nbt=!{HurtTime:0s},sort=nearest] 8 atrium:extra_weapon_damage by @s
#
# Small chance (7%) of dealing damage to you also.
execute if predicate atrium:percentage_chances/0.07_p run damage @s 8 atrium:extra_weapon_damage by @s
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/runic_enchantments/annihilate