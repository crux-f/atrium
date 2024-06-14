# Enchantment particles
execute at @s positioned ^ ^ ^3 at @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 25
# Record current health
execute at @s positioned ^ ^ ^3 as @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] store result score @s enchantment_damage run data get entity @s Health
# Deal additional damage based on level (doesn't work on players unfortunately)
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_backstabbing_lv:1b}}}}] positioned ^ ^ ^3 as @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s enchantment_damage 4
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_backstabbing_lv:2b}}}}] positioned ^ ^ ^3 as @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s enchantment_damage 6
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_backstabbing_lv:3b}}}}] positioned ^ ^ ^3 as @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s enchantment_damage 8
advancement revoke @s only atrium:triggers/runic_enchantments/backstabbing
