# Enchantment particles
execute at @s positioned ^ ^ ^3 at @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 25
# Record current health
scoreboard objectives add backstabbing dummy
execute at @s positioned ^ ^ ^3 as @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] store result score @s backstabbing run data get entity @s Health
# Deal additional damage based on level (doesn't work on players unfortunately)
execute at @s[nbt={SelectedItem:{tag:{lv1:1b}}}] positioned ^ ^ ^3 as @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s backstabbing 6
execute at @s[nbt={SelectedItem:{tag:{lv2:1b}}}] positioned ^ ^ ^3 as @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s backstabbing 8
execute at @s[nbt={SelectedItem:{tag:{lv3:1b}}}] positioned ^ ^ ^3 as @e[limit=1,type=!minecraft:player,distance=..3,sort=nearest] store result entity @s Health float 1 run scoreboard players remove @s backstabbing 10
advancement revoke @s only atrium:triggers/enchantments/backstabbing
