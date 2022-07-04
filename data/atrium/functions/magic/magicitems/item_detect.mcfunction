# Charge the staves
execute if entity @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{waterstaff:1b}}]}] run function atrium:magic/magicitems/waterstaff_charge
execute if entity @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{earthstaff:1b}}]}] run function atrium:magic/magicitems/earthstaff_charge
execute if entity @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{firestaff:1b}}]}] run function atrium:magic/magicitems/firestaff_charge
execute if entity @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{airstaff:1b}}]}] run function atrium:magic/magicitems/airstaff_charge
execute if entity @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{timestaff:1b}}]}] run function atrium:magic/magicitems/timestaff_charge
execute if entity @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spacestaff:1b}}]}] run function atrium:magic/magicitems/spacestaff_charge
#
# Charge the spellbooks
#
execute if entity @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b}}]}] run function atrium:magic/magicitems/spellbook_charge
#
# Charge the scrolls
execute if entity @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{scroll:1b}}]}] run function atrium:magic/magicitems/scroll_charge
# Sounds
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{staff:1b,lv1:1b}}]},level=..1] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1 2 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{staff:1b,lv1:1b}}]},level=2..] run playsound minecraft:entity.experience_orb.pickup player @a[distance=..30] ~ ~ ~ 0.5 2 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{staff:1b,lv2:1b}}]},level=..3] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1 2 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{staff:1b,lv2:1b}}]},level=4..] run playsound minecraft:entity.experience_orb.pickup player @a[distance=..30] ~ ~ ~ 0.5 2 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{staff:1b,lv3:1b}}]},level=..4] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1 2 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{staff:1b,lv3:1b}}]},level=5..] run playsound minecraft:entity.experience_orb.pickup player @a[distance=..30] ~ ~ ~ 0.5 2 0.1
# extra charging sound for max level staves
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{staff:1b,lv3:1b}}]},level=5..] run playsound minecraft:block.amethyst_cluster.step player @a[distance=..30] ~ ~ ~ 0.45 0.05 0.1
#
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b}}]},level=..4] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1 1 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b}}]},level=5..] run playsound minecraft:item.book.page_turn player @a[distance=..30] ~ ~ ~ 1 1 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{scroll:1b}}]},level=..1] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1 1 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{scroll:1b}}]},level=2..] run playsound minecraft:item.book.page_turn player @a[distance=..30] ~ ~ ~ 1 1 0.1
#
#
# Remove battle saddle from horses not wearing it.
data merge entity @e[type=horse,limit=1,nbt=!{SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{battle_saddle:1b}}}] {ArmorItems:[{},{},{},{id:"minecraft:leather",Count:1b,tag:{display:{Name:'{"text":"Special Saddle Placeholder","italic":false}'},special_saddle_placeholder:1b}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
#
# Give battle saddle to horses wearing it.
data merge entity @e[type=horse,limit=1,nbt={SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{battle_saddle:1b}}}] {ArmorItems:[{},{},{},{id:"minecraft:leather",Count:1b,tag:{display:{Name:'{"text":"Battle Saddle","italic":false}'},battle_saddle_placeholder:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:4,Operation:0,UUID:[I;-1847830343,1232555088,-1859204495,-1095558539],Slot:"head"}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],ArmorItem:{}}
#
# Charge PATREON items.
#
execute as @a[name="shadow_knight6",gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{shadow_knight6_item:1b}}]}] run function atrium:magic/magicitems/patreon/shadow_knight6_item_charge
execute as @a[name="shadow_knight6",gamemode=!spectator,nbt={Inventory:[{Slot:103b,tag:{shadow_knight6_item:1b}}]}] run effect give @s minecraft:slow_falling 2 0 true
execute as @a[name="shadow_knight6",gamemode=!spectator,nbt={Inventory:[{Slot:103b,tag:{shadow_knight6_item:1b}}]}] run effect give @s minecraft:invisibility 2 0 true
#
# Disabled items
# execute as @a[limit=1] if entity @s[name=Leodi_Hodu,gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{leodi_hodu_item:1b}}]}] run function atrium:magic/magicitems/patreon/leodi_hodu_item_charge
#
# Run it again in 1 second.
schedule function atrium:magic/magicitems/item_detect 1s
