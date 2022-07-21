# Ticks each waterstaff score up once per second (activated by item_detect)
# 
#
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{waterstaff:1b,lv1:1b}}]},level=2..] waterstaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{waterstaff:1b,lv2:1b}}]},level=2..] waterstaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{waterstaff:1b,lv3:1b}}]},level=5..] waterstaff 1
# Keeps absorbing 5-15 points (based on staff level) of xp a second until you hold the correct component 
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{waterstaff:1b,lv1:1b}}]}] -8 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{waterstaff:1b,lv2:1b}}]}] -16 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{waterstaff:1b,lv3:1b}}]}] -24 points
# IF you meet the required predicate (component AND correct staff score) begin casting the spell.
#
# Extinguish: Glowstone - Nourishment: Redstone - - - Levels I-III
execute if entity @a[predicate=atrium:extinguish_1_req] run function atrium:magic/magicitems/spells/extinguish_1
execute if entity @a[predicate=atrium:nourishment_1_req] run function atrium:magic/magicitems/spells/nourishment_1_start
execute if entity @a[predicate=atrium:extinguish_2_req] run function atrium:magic/magicitems/spells/extinguish_2
execute if entity @a[predicate=atrium:nourishment_2_req] run function atrium:magic/magicitems/spells/nourishment_2_start
execute if entity @a[predicate=atrium:extinguish_3_req] run function atrium:magic/magicitems/spells/extinguish_3
execute if entity @a[predicate=atrium:nourishment_3_req] run function atrium:magic/magicitems/spells/nourishment_3_start
#
# Ultimate Spell: Flush
execute if entity @a[predicate=atrium:flush_req] as @a[predicate=atrium:flush_req] run function atrium:magic/magicitems/spells/flush