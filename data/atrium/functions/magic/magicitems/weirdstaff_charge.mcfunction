# Ticks each weirdstaff score up once per second (activated by item_detect)
# 
#
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{mercurialstaff:1b}}]},level=2..] mercurialstaff 1
# Keeps absorbing 8-24 points (based on staff level) of xp a second until you hold the correct component 
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{weird_combo:1b,lv1:1b}}]}] -8 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{weird_combo:1b,lv2:1b}}]}] -16 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{weird_combo:1b,lv3:1b}}]}] -24 points
# IF you meet the required predicate (component AND correct staff score) begin casting the spell.
#
# Fizzle Spell: Glowstone - Destabilize: Redstone
execute if entity @a[predicate=atrium:fizzle_spell_req] as @a[predicate=atrium:fizzle_spell_req] run function atrium:magic/magicitems/spells/fizzle_spell
execute if entity @a[predicate=atrium:destabilize_item_req] as @a[predicate=atrium:destabilize_item_req] run function atrium:magic/magicitems/spells/destabilize_item
execute if entity @a[predicate=atrium:hush_req] as @a[predicate=atrium:hush_req] run function atrium:magic/magicitems/spells/hush
execute if entity @a[predicate=atrium:shush_req] as @a[predicate=atrium:shush_req] run function atrium:magic/magicitems/spells/shush
#
# Mercurial Staff Ultimate: Catalyze
#
execute if entity @a[predicate=atrium:catalyze_req] as @a[predicate=atrium:catalyze_req] run function atrium:magic/magicitems/spells/catalyze


