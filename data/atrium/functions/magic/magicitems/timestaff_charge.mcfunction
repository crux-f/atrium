# Ticks each timestaff score up once per second (activated by item_detect)
# 
#
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{timestaff:1b,lv1:1b}}]},level=2..] timestaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{timestaff:1b,lv2:1b}}]},level=2..] timestaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{timestaff:1b,lv3:1b}}]},level=5..] timestaff 1
# Keeps absorbing 8-24 points (based on staff level) of xp a second until you hold the correct component 
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{timestaff:1b,lv1:1b}}]}] -8 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{timestaff:1b,lv2:1b}}]}] -16 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{timestaff:1b,lv3:1b}}]}] -24 points
# IF you meet the required predicate (component AND correct staff score) begin casting the spell.
#
# Extinguish: Glowstone - Nourishment: Redstone - - - Levels I-III
execute if entity @a[predicate=atrium:desync_1_req] run function atrium:magic/magicitems/spells/desync_1
execute if entity @a[predicate=atrium:lethargysigil_1_req] run function atrium:magic/magicitems/spells/lethargysigil_1_start
# execute if entity @a[predicate=atrium:desync_2_req] run function atrium:magic/magicitems/spells/desync_2
# execute if entity @a[predicate=atrium:lethargysigil_2_req] run function atrium:magic/magicitems/spells/lethargysigil_2_start
# execute if entity @a[predicate=atrium:desync_3_req] run function atrium:magic/magicitems/spells/desync_3
# execute if entity @a[predicate=atrium:lethargysigil_3_req] run function atrium:magic/magicitems/spells/lethargysigil_3_start
#
# Ultimate Spell: ???
#
# execute if entity @a[predicate=atrium:ult_req] run function atrium:magic/magicitems/spells/ultimate
# execute if entity @a[predicate=atrium:ult_req] run function atrium:magic/magicitems/spells/ultimate
