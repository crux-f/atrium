# SFX
execute at @a[tag=atrium_pocket_item_caster] run playsound minecraft:entity.enderman.teleport player @a[distance=..10] ~ ~ ~ 0.25 1.75 0.1
execute as @a[tag=atrium_pocket_item_caster] at @s anchored eyes run particle minecraft:portal ^ ^ ^1.25 0 0 0 1 10
#
# Start the show
execute as @a[tag=atrium_pocket_item_caster] run scoreboard players set @s atrium_pocket_item_flag 0
# Teleport the held item into the player's Ender Chest. If the player is holding a power slot item, let them know it didn't work.
#
# If you are holding an item, stop the show.
execute as @a[tag=atrium_pocket_item_caster] if entity @s[nbt={SelectedItem:{}}] run scoreboard players set @s atrium_pocket_item_flag 1
execute as @a[tag=atrium_pocket_item_caster] if entity @s[nbt={SelectedItem:{}}] run tellraw @s {"text":"(You already have something in your hand.)","italic":true,"color":"gray"}
#
# Cycles through slots until it finds an item. atrium_pocket_item_flag is used to compress it into one command so I don't need to make 27 script files. (1 for each slot check)
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:0b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 0
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:1b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 1
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:2b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 2
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:3b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 3
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:4b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 4
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:5b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 5
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:6b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 6
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:7b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 7
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:8b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 8
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:9b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 9
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:10b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 10
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:11b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 11
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:12b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 12
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:13b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 13
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:14b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 14
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:15b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 15
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:16b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 16
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:17b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 17
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:18b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 18
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:19b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 19
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:20b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 20
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:21b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 21
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:22b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 22
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:23b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 23
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:24b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 24
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:25b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 25
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] if entity @s[nbt={EnderItems:[{Slot:26b}]}] store success score @s atrium_pocket_item_flag run scoreboard players set @s valid_ingredients 26
# Grabs that item and puts it in your main hand
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=0}] run item replace entity @s weapon.mainhand from entity @s enderchest.0
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=1}] run item replace entity @s weapon.mainhand from entity @s enderchest.1
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=2}] run item replace entity @s weapon.mainhand from entity @s enderchest.2
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=3}] run item replace entity @s weapon.mainhand from entity @s enderchest.3
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=4}] run item replace entity @s weapon.mainhand from entity @s enderchest.4
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=5}] run item replace entity @s weapon.mainhand from entity @s enderchest.5
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=6}] run item replace entity @s weapon.mainhand from entity @s enderchest.6
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=7}] run item replace entity @s weapon.mainhand from entity @s enderchest.7
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=8}] run item replace entity @s weapon.mainhand from entity @s enderchest.8
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=9}] run item replace entity @s weapon.mainhand from entity @s enderchest.9
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=10}] run item replace entity @s weapon.mainhand from entity @s enderchest.10
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=11}] run item replace entity @s weapon.mainhand from entity @s enderchest.11
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=12}] run item replace entity @s weapon.mainhand from entity @s enderchest.12
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=13}] run item replace entity @s weapon.mainhand from entity @s enderchest.13
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=14}] run item replace entity @s weapon.mainhand from entity @s enderchest.14
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=15}] run item replace entity @s weapon.mainhand from entity @s enderchest.15
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=16}] run item replace entity @s weapon.mainhand from entity @s enderchest.16
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=17}] run item replace entity @s weapon.mainhand from entity @s enderchest.17
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=18}] run item replace entity @s weapon.mainhand from entity @s enderchest.18
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=19}] run item replace entity @s weapon.mainhand from entity @s enderchest.19
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=20}] run item replace entity @s weapon.mainhand from entity @s enderchest.20
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=21}] run item replace entity @s weapon.mainhand from entity @s enderchest.21
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=22}] run item replace entity @s weapon.mainhand from entity @s enderchest.22
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=23}] run item replace entity @s weapon.mainhand from entity @s enderchest.23
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=24}] run item replace entity @s weapon.mainhand from entity @s enderchest.24
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=25}] run item replace entity @s weapon.mainhand from entity @s enderchest.25
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=26}] run item replace entity @s weapon.mainhand from entity @s enderchest.26
#
# If it was successful, remove the item from your Ender Chest.
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=0}] run item replace entity @s enderchest.0 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=1}] run item replace entity @s enderchest.1 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=2}] run item replace entity @s enderchest.2 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=3}] run item replace entity @s enderchest.3 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=4}] run item replace entity @s enderchest.4 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=5}] run item replace entity @s enderchest.5 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=6}] run item replace entity @s enderchest.6 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=7}] run item replace entity @s enderchest.7 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=8}] run item replace entity @s enderchest.8 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=9}] run item replace entity @s enderchest.9 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=10}] run item replace entity @s enderchest.10 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=11}] run item replace entity @s enderchest.11 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=12}] run item replace entity @s enderchest.12 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=13}] run item replace entity @s enderchest.13 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=14}] run item replace entity @s enderchest.14 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=15}] run item replace entity @s enderchest.15 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=16}] run item replace entity @s enderchest.16 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=17}] run item replace entity @s enderchest.17 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=18}] run item replace entity @s enderchest.18 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=19}] run item replace entity @s enderchest.19 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=20}] run item replace entity @s enderchest.20 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=21}] run item replace entity @s enderchest.21 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=22}] run item replace entity @s enderchest.22 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=23}] run item replace entity @s enderchest.23 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=24}] run item replace entity @s enderchest.24 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=25}] run item replace entity @s enderchest.25 with minecraft:air
execute as @a[tag=atrium_pocket_item_caster,scores={valid_ingredients=26}] run item replace entity @s enderchest.26 with minecraft:air
#
# Remove success flag
scoreboard players reset @a[tag=atrium_pocket_item_caster] atrium_pocket_item_flag
# Reset valid_ingredients counter
scoreboard players reset @a[tag=atrium_pocket_item_caster] valid_ingredients
# Remove tag
execute as @a[tag=atrium_pocket_item_caster] run tag @s remove atrium_pocket_item_caster