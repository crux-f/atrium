# Ticks patreon_item score up once per second (activated by staff_detect)
# Keeps absorbing 5 points of xp a second until you hold the correct component 
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{leodi_hodu_item:1b}}]},level=1..] patreon_item 1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{leodi_hodu_item:1b}}]},level=0] run playsound minecraft:block.redstone_torch.burnout player @a[distance=..30] ~ ~ ~ 1 2 0.1
execute at @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{leodi_hodu_item:1b}}]},level=1..] run playsound minecraft:entity.experience_orb.pickup player @a[distance=..30] ~ ~ ~ 0.5 2 0.1
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{leodi_hodu_item:1b}}]}] -5 points
execute if entity @a[nbt=!{Inventory:[{Slot:-106b,tag:{leodi_hodu_item:1b}}]}] run scoreboard players set crux_f patreon_item 0
execute if entity @a[scores={patreon_item=5..}] run function atrium:magic/magicitems/patreon/leodi_hodu_repeat
# execute if entity @a[predicate=atrium:updraft_1_req] run function atrium:magic/magicitems/spells/updraft_1_start
# execute if entity @a[predicate=atrium:increase_velocity_1_req] run function atrium:magic/magicitems/spells/increase_velocity_1

