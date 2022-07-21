# Ticks each earthstaff score up once per second (activated by item_detect)
# 
#
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{earthstaff:1b,lv1:1b}}]},level=3..] earthstaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{earthstaff:1b,lv2:1b}}]},level=2..] earthstaff 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{earthstaff:1b,lv3:1b}}]},level=5..] earthstaff 1
# Keeps absorbing 5-15 points (based on staff level) of xp a second until you hold the correct component 
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{earthstaff:1b,lv1:1b}}]}] -8 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{earthstaff:1b,lv2:1b}}]}] -16 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{earthstaff:1b,lv3:1b}}]}] -24 points
# IF you meet the required predicate (component AND correct staff score) begin casting the spell.
#
# Extinguish: Glowstone - Nourishment: Redstone - - - Levels I-III
execute if entity @a[predicate=atrium:stone_sprite_1_req] as @a[predicate=atrium:stone_sprite_1_req] run function atrium:magic/magicitems/spells/stone_sprite_1
execute if entity @a[predicate=atrium:natural_armor_1_req] as @a[predicate=atrium:natural_armor_1_req] run function atrium:magic/magicitems/spells/natural_armor_1
execute if entity @a[predicate=atrium:stone_sprite_2_req] as @a[predicate=atrium:stone_sprite_2_req] run function atrium:magic/magicitems/spells/stone_sprite_2
execute if entity @a[predicate=atrium:natural_armor_2_req] as @a[predicate=atrium:natural_armor_2_req] run function atrium:magic/magicitems/spells/natural_armor_2
execute if entity @a[predicate=atrium:stone_sprite_3_req] as @a[predicate=atrium:stone_sprite_3_req] run function atrium:magic/magicitems/spells/stone_sprite_3
execute if entity @a[predicate=atrium:natural_armor_3_req] as @a[predicate=atrium:natural_armor_3_req] run function atrium:magic/magicitems/spells/natural_armor_3
#
# Ultimate Spell: Return
#
execute if entity @a[predicate=atrium:return_setup_req] as @a[predicate=atrium:return_setup_req] run function atrium:magic/magicitems/spells/return_setup
#
execute if entity @a[predicate=atrium:return_cast_req] as @a[predicate=atrium:return_cast_req] run function atrium:magic/magicitems/spells/return_cast


