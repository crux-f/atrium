# Ticks each airstaff score up once per second (activated by item_detect)
# 
#
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{airstaff:1b,lv1:1b}}]},level=2..] airstaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{airstaff:1b,lv2:1b}}]},level=2..] airstaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{airstaff:1b,lv3:1b}}]},level=5..] airstaff 1
# Keeps absorbing 8-24 points (based on staff level) of xp a second until you hold the correct component 
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{airstaff:1b,lv1:1b}}]}] -8 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{airstaff:1b,lv2:1b}}]}] -16 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{airstaff:1b,lv3:1b}}]}] -24 points
# IF you meet the required predicate (component AND correct staff score) begin casting the spell.
#
# Extinguish: Glowstone - Nourishment: Redstone - - - Levels I-III
execute if entity @a[predicate=atrium:increase_velocity_1_req] as @a[predicate=atrium:increase_velocity_1_req] run function atrium:magic/magicitems/spells/increase_velocity_1
execute if entity @a[predicate=atrium:updraft_1_req] as @a[predicate=atrium:updraft_1_req] run function atrium:magic/magicitems/spells/updraft_1_start
execute if entity @a[predicate=atrium:increase_velocity_2_req] as @a[predicate=atrium:increase_velocity_2_req] run function atrium:magic/magicitems/spells/increase_velocity_2
execute if entity @a[predicate=atrium:updraft_2_req] as @a[predicate=atrium:updraft_2_req] run function atrium:magic/magicitems/spells/updraft_2_start
execute if entity @a[predicate=atrium:increase_velocity_3_req] as @a[predicate=atrium:increase_velocity_3_req] run function atrium:magic/magicitems/spells/increase_velocity_3
execute if entity @a[predicate=atrium:updraft_3_req] as @a[predicate=atrium:updraft_3_req] run function atrium:magic/magicitems/spells/updraft_3_start
#
# Air Staff Ultimate: Dance
#
execute if entity @a[predicate=atrium:dance_req] as @a[predicate=atrium:dance_req] run function atrium:magic/magicitems/spells/dance
#
# Voltaic Staff Ultimate: Thunderbolt
# Fire + Air
execute if entity @a[predicate=atrium:thunderbolt_req] as @a[predicate=atrium:thunderbolt_req] run function atrium:magic/magicitems/spells/thunderbolt_setup