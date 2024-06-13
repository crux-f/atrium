# Enchantment particles
execute at @s positioned ^ ^ ^3 at @e[limit=1,type=#minecraft:raiders,distance=..3,sort=nearest] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 25
# Record current health
execute at @s positioned ^ ^ ^3 as @e[limit=1,type=#minecraft:raiders,distance=..3,sort=nearest] store result score @s raider_slayer run data get entity @s Health
# Deal additional damage based on level (doesn't work on players unfortunately)
execute at @s[nbt={SelectedItem:{tag:{raider_slayer_lv:1b}}}] positioned ^ ^ ^3 as @e[limit=1,type=#minecraft:raiders,distance=..3,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s raider_slayer 3
execute at @s[nbt={SelectedItem:{tag:{raider_slayer_lv:2b}}}] positioned ^ ^ ^3 as @e[limit=1,type=#minecraft:raiders,distance=..3,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s raider_slayer 5
execute at @s[nbt={SelectedItem:{tag:{raider_slayer_lv:3b}}}] positioned ^ ^ ^3 as @e[limit=1,type=#minecraft:raiders,distance=..3,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s raider_slayer 7
advancement revoke @s only atrium:triggers/enchantments/raider_slayer
