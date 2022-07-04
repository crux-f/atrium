# Ticks each spacestaff score up once per second (activated by item_detect)
# 
#
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spacestaff:1b,lv1:1b}}]},level=2..] spacestaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spacestaff:1b,lv2:1b}}]},level=2..] spacestaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spacestaff:1b,lv3:1b}}]},level=5..] spacestaff 1
# Keeps absorbing 5-15 points (based on staff level) of xp a second until you hold the correct component 
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spacestaff:1b,lv1:1b}}]}] -5 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spacestaff:1b,lv2:1b}}]}] -10 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spacestaff:1b,lv3:1b}}]}] -15 points
# IF you meet the required predicate (component AND correct staff score) begin casting the spell.
#
# Parallax: Glowstone - Returning Sigil: Redstone - - - Levels I-III
execute if entity @a[predicate=atrium:parallax_1_req] run function atrium:magic/magicitems/spells/parallax_1_start
execute if entity @a[predicate=atrium:returningsigil_1_req] run function atrium:magic/magicitems/spells/returningsigil_1_start
# execute if entity @a[predicate=atrium:parallax_2_req] run function atrium:magic/magicitems/spells/parallax_2
# execute if entity @a[predicate=atrium:returningsigil_2_req] run function atrium:magic/magicitems/spells/returningsigil_2_start
# execute if entity @a[predicate=atrium:parallax_3_req] run function atrium:magic/magicitems/spells/parallax_3
# execute if entity @a[predicate=atrium:returningsigil_3_req] run function atrium:magic/magicitems/spells/returningsigil_3_start
#
# Ultimate Spell: ???
#
# execute if entity @a[predicate=atrium:ult_req] run function atrium:magic/magicitems/spells/ultimate
# execute if entity @a[predicate=atrium:ult_req] run function atrium:magic/magicitems/spells/ultimate
