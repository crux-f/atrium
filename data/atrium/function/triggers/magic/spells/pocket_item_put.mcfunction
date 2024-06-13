# SFX
execute at @a[tag=atrium_pocket_item_caster] run playsound minecraft:entity.enderman.teleport player @a[distance=..10] ~ ~ ~ 0.25 1.75 0.1
execute as @a[tag=atrium_pocket_item_caster] at @s anchored eyes run particle minecraft:reverse_portal ^ ^ ^1.25 0 0 0 1 10
#
# Start the show
execute as @a[tag=atrium_pocket_item_caster] run scoreboard players set @s atrium_pocket_item_flag 0
# Teleport the held item into the player's Ender Chest. If the player is holding a power slot item, let them know it didn't work.
#
# If the item you are holding is a power slot, stop the show.
execute as @a[tag=atrium_pocket_item_caster] if entity @s[nbt={SelectedItem:{tag:{atrium_power:1b}}}] run scoreboard players set @s atrium_pocket_item_flag 1
#
# Cycles through until it finds an available slot. atrium_pocket_item_flag is used to compress it into one command so I don't need to make 27 script files. (1 for each slot check)
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:0b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.0 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:1b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.1 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:2b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.2 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:3b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.3 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:4b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.4 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:5b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.5 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:6b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.6 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:7b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.7 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:8b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.8 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:9b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.9 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:10b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.10 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:11b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.11 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:12b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.12 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:13b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.13 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:14b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.14 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:15b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.15 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:16b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.16 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:17b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.17 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:18b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.18 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:19b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.19 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:20b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.20 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:21b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.21 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:22b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.22 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:23b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.23 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:24b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.24 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:25b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.25 from entity @s weapon.mainhand
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=0}] unless entity @s[nbt={EnderItems:[{Slot:26b}]}] store success score @s atrium_pocket_item_flag run item replace entity @s enderchest.26 from entity @s weapon.mainhand
#
# If it was successful, remove the item in your main hand.
execute as @a[tag=atrium_pocket_item_caster,scores={atrium_pocket_item_flag=1}] unless entity @s[nbt={SelectedItem:{tag:{atrium_power:1b}}}] run item replace entity @s weapon.mainhand with minecraft:air
#
# Remove success flag
scoreboard players reset @a[tag=atrium_pocket_item_caster] atrium_pocket_item_flag
# Remove tag
execute as @a[tag=atrium_pocket_item_caster] run tag @s remove atrium_pocket_item_caster