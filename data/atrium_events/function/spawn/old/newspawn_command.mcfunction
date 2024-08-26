# Activated via the MyCommand plugin. Players can activate this by typing /newspawn in chat, however it is blocked by WorldGuard from being used
# within the current play area.
#
# Can't believe I'm doing this
# Set down 3 chests. 
execute at @s run setblock ~ ~ ~ chest[type=single]{Lock:"atrium_old_inv_key",CustomName:'{"text":"Rapture Chest","color":"light_purple","italic":false}'} destroy
execute at @s run setblock ~ ~1 ~ chest[type=single]{Lock:"atrium_old_inv_key",CustomName:'{"text":"Rapture Chest","color":"light_purple","italic":false}'} destroy
execute at @s run setblock ~ ~2 ~ chest[type=single]{Lock:"atrium_old_inv_key",CustomName:'{"text":"Rapture Ender Chest","color":"dark_purple","italic":false}'} destroy
#
# Copy your entire inventory into them
execute at @s run item replace block ~ ~ ~ container.0 from entity @s armor.head
execute at @s run item replace block ~ ~ ~ container.1 from entity @s armor.chest
execute at @s run item replace block ~ ~ ~ container.2 from entity @s armor.legs
execute at @s run item replace block ~ ~ ~ container.3 from entity @s armor.feet
execute at @s run item replace block ~ ~ ~ container.4 from entity @s hotbar.0
execute at @s run item replace block ~ ~ ~ container.5 from entity @s hotbar.1
execute at @s run item replace block ~ ~ ~ container.6 from entity @s hotbar.2
execute at @s run item replace block ~ ~ ~ container.7 from entity @s hotbar.3
execute at @s run item replace block ~ ~ ~ container.8 from entity @s hotbar.4
execute at @s run item replace block ~ ~ ~ container.9 from entity @s hotbar.5
execute at @s run item replace block ~ ~ ~ container.10 from entity @s hotbar.6
execute at @s run item replace block ~ ~ ~ container.11 from entity @s hotbar.7
execute at @s run item replace block ~ ~ ~ container.12 from entity @s hotbar.8
execute at @s run item replace block ~ ~ ~ container.13 from entity @s weapon.offhand
execute at @s run item replace block ~ ~1 ~ container.0 from entity @s inventory.0
execute at @s run item replace block ~ ~1 ~ container.1 from entity @s inventory.1
execute at @s run item replace block ~ ~1 ~ container.2 from entity @s inventory.2
execute at @s run item replace block ~ ~1 ~ container.3 from entity @s inventory.3
execute at @s run item replace block ~ ~1 ~ container.4 from entity @s inventory.4
execute at @s run item replace block ~ ~1 ~ container.5 from entity @s inventory.5
execute at @s run item replace block ~ ~1 ~ container.6 from entity @s inventory.6
execute at @s run item replace block ~ ~1 ~ container.7 from entity @s inventory.7
execute at @s run item replace block ~ ~1 ~ container.8 from entity @s inventory.8
execute at @s run item replace block ~ ~1 ~ container.9 from entity @s inventory.9
execute at @s run item replace block ~ ~1 ~ container.10 from entity @s inventory.10
execute at @s run item replace block ~ ~1 ~ container.11 from entity @s inventory.11
execute at @s run item replace block ~ ~1 ~ container.12 from entity @s inventory.12
execute at @s run item replace block ~ ~1 ~ container.13 from entity @s inventory.13
execute at @s run item replace block ~ ~1 ~ container.14 from entity @s inventory.14
execute at @s run item replace block ~ ~1 ~ container.15 from entity @s inventory.15
execute at @s run item replace block ~ ~1 ~ container.16 from entity @s inventory.16
execute at @s run item replace block ~ ~1 ~ container.17 from entity @s inventory.17
execute at @s run item replace block ~ ~1 ~ container.18 from entity @s inventory.18
execute at @s run item replace block ~ ~1 ~ container.19 from entity @s inventory.19
execute at @s run item replace block ~ ~1 ~ container.20 from entity @s inventory.20
execute at @s run item replace block ~ ~1 ~ container.21 from entity @s inventory.21
execute at @s run item replace block ~ ~1 ~ container.22 from entity @s inventory.22
execute at @s run item replace block ~ ~1 ~ container.23 from entity @s inventory.23
execute at @s run item replace block ~ ~1 ~ container.24 from entity @s inventory.24
execute at @s run item replace block ~ ~1 ~ container.25 from entity @s inventory.25
execute at @s run item replace block ~ ~1 ~ container.26 from entity @s inventory.26
# Copy enderchest
execute at @s run item replace block ~ ~2 ~ container.0 from entity @s enderchest.0
execute at @s run item replace block ~ ~2 ~ container.1 from entity @s enderchest.1
execute at @s run item replace block ~ ~2 ~ container.2 from entity @s enderchest.2
execute at @s run item replace block ~ ~2 ~ container.3 from entity @s enderchest.3
execute at @s run item replace block ~ ~2 ~ container.4 from entity @s enderchest.4
execute at @s run item replace block ~ ~2 ~ container.5 from entity @s enderchest.5
execute at @s run item replace block ~ ~2 ~ container.6 from entity @s enderchest.6
execute at @s run item replace block ~ ~2 ~ container.7 from entity @s enderchest.7
execute at @s run item replace block ~ ~2 ~ container.8 from entity @s enderchest.8
execute at @s run item replace block ~ ~2 ~ container.9 from entity @s enderchest.9
execute at @s run item replace block ~ ~2 ~ container.10 from entity @s enderchest.10
execute at @s run item replace block ~ ~2 ~ container.11 from entity @s enderchest.11
execute at @s run item replace block ~ ~2 ~ container.12 from entity @s enderchest.12
execute at @s run item replace block ~ ~2 ~ container.13 from entity @s enderchest.13
execute at @s run item replace block ~ ~2 ~ container.14 from entity @s enderchest.14
execute at @s run item replace block ~ ~2 ~ container.15 from entity @s enderchest.15
execute at @s run item replace block ~ ~2 ~ container.16 from entity @s enderchest.16
execute at @s run item replace block ~ ~2 ~ container.17 from entity @s enderchest.17
execute at @s run item replace block ~ ~2 ~ container.18 from entity @s enderchest.18
execute at @s run item replace block ~ ~2 ~ container.19 from entity @s enderchest.19
execute at @s run item replace block ~ ~2 ~ container.20 from entity @s enderchest.20
execute at @s run item replace block ~ ~2 ~ container.21 from entity @s enderchest.21
execute at @s run item replace block ~ ~2 ~ container.22 from entity @s enderchest.22
execute at @s run item replace block ~ ~2 ~ container.23 from entity @s enderchest.23
execute at @s run item replace block ~ ~2 ~ container.24 from entity @s enderchest.24
execute at @s run item replace block ~ ~2 ~ container.25 from entity @s enderchest.25
execute at @s run item replace block ~ ~2 ~ container.26 from entity @s enderchest.26
# Clear enderchest
item replace entity @s enderchest.0 with minecraft:air
item replace entity @s enderchest.1 with minecraft:air
item replace entity @s enderchest.2 with minecraft:air
item replace entity @s enderchest.3 with minecraft:air
item replace entity @s enderchest.4 with minecraft:air
item replace entity @s enderchest.5 with minecraft:air
item replace entity @s enderchest.6 with minecraft:air
item replace entity @s enderchest.7 with minecraft:air
item replace entity @s enderchest.8 with minecraft:air
item replace entity @s enderchest.9 with minecraft:air
item replace entity @s enderchest.10 with minecraft:air
item replace entity @s enderchest.11 with minecraft:air
item replace entity @s enderchest.12 with minecraft:air
item replace entity @s enderchest.13 with minecraft:air
item replace entity @s enderchest.14 with minecraft:air
item replace entity @s enderchest.15 with minecraft:air
item replace entity @s enderchest.16 with minecraft:air
item replace entity @s enderchest.17 with minecraft:air
item replace entity @s enderchest.18 with minecraft:air
item replace entity @s enderchest.19 with minecraft:air
item replace entity @s enderchest.20 with minecraft:air
item replace entity @s enderchest.21 with minecraft:air
item replace entity @s enderchest.22 with minecraft:air
item replace entity @s enderchest.23 with minecraft:air
item replace entity @s enderchest.24 with minecraft:air
item replace entity @s enderchest.25 with minecraft:air
item replace entity @s enderchest.26 with minecraft:air
#
# Clear the originals
clear @s
#
# Spawn FX 1
# Outdated 1.21 v v v
# execute at @s run summon firework_rocket ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"text":"Rapture, Baby","color":"yellow","italic":false}',FireworksItem:{id:"minecraft:gold_block",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;15007539],FadeColors:[I;16762969]}]}}}}
#
# Clear gameplay advancements
# execute as @s run function atrium:spawn/advancement_revoke
# 
# And whisk you away to the Public Void
execute in atrium:between_worlds run tp 36734.5 102.5 -2715.5
# Outdated 1.21 v v v
# execute in atrium:between_worlds positioned 36734.5 90 -2715.5 run summon firework_rocket ~ ~ ~ {CustomNameVisible:1b,CustomName:'{"text":"Rapture, Baby","color":"yellow","italic":false}',FireworksItem:{id:"minecraft:gold_block",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;15007539],FadeColors:[I;16762969]}]}}}}
#
# Seamwalker Patrons Only: Give Seamwalker's Door
execute if entity @s[name="Konobeat"] as @s run function atrium:items/give/placeable_structures/seamwalkers_door_placer
