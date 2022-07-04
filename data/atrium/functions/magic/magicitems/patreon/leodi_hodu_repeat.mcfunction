execute at Leodi_Hodu run particle flame ^-0.2 ^ ^ 0 0 0 0 1 normal
execute at Leodi_Hodu run particle flame ^0.2 ^ ^ 0 0 0 0 1 normal
scoreboard players add Leodi_Hodu leo_item 1
effect give Leodi_Hodu minecraft:speed 2 0 true
execute if entity @a[nbt=!{Inventory:[{Slot:-106b,tag:{leodi_hodu_item:1b}}]}] run scoreboard players set Leodi_Hodu patreon_item 0
execute if entity @e[name=Leodi_Hodu,scores={leo_item=..1799}] run schedule function atrium:magic/magicitems/patreon/leodi_hodu_repeat 1t
execute if entity @a[name=Leodi_Hodu,scores={leo_item=1800..}] run scoreboard players set Leodi_Hodu leo_item 0
