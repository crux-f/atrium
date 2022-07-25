# Ticks each firestaff score up once per second (activated by item_detect)
# 
#
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{firestaff:1b,lv1:1b}}]},level=2..] firestaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{firestaff:1b,lv2:1b}}]},level=2..] firestaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{firestaff:1b,lv3:1b}}]},level=5..] firestaff 1
# Keeps absorbing 8-24 points (based on staff level) of xp a second until you hold the correct component 
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{firestaff:1b,lv1:1b}}]}] -8 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{firestaff:1b,lv2:1b}}]}] -16 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{firestaff:1b,lv3:1b}}]}] -24 points
#
# IF you meet the required predicate (component AND correct staff score) begin casting the spell.
#
# Extinguish: Glowstone - Nourishment: Redstone - - - Levels I-III
execute if entity @a[predicate=atrium:fireburst_1_req] as @a[predicate=atrium:fireburst_1_req] run function atrium:magic/magicitems/spells/fireburst_1
execute if entity @a[predicate=atrium:firesigil_1_req] as @a[predicate=atrium:firesigil_1_req] run function atrium:magic/magicitems/spells/firesigil_1_start
execute if entity @a[predicate=atrium:fireburst_2_req] as @a[predicate=atrium:fireburst_2_req] run function atrium:magic/magicitems/spells/fireburst_2
execute if entity @a[predicate=atrium:firesigil_2_req] as @a[predicate=atrium:firesigil_2_req] run function atrium:magic/magicitems/spells/firesigil_2_start
execute if entity @a[predicate=atrium:fireburst_3_req] as @a[predicate=atrium:fireburst_3_req] run function atrium:magic/magicitems/spells/fireburst_3
execute if entity @a[predicate=atrium:firesigil_3_req] as @a[predicate=atrium:firesigil_3_req] run function atrium:magic/magicitems/spells/firesigil_3_start
#
# Fire Staff Ultimate: Meteor
#
execute if entity @a[predicate=atrium:meteor_req] as @a[predicate=atrium:meteor_req] run function atrium:magic/magicitems/spells/meteor
#
#
# Molten Staff Ultimate: Eruption
# Earth + Fire
execute if entity @a[predicate=atrium:eruption_req] as @a[predicate=atrium:eruption_req] run function atrium:magic/magicitems/spells/eruption