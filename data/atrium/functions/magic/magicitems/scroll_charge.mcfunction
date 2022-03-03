# Ticks each scroll score up once per second (activated by item_detect)
# 
#
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{scroll:1b}}]},level=2..] scroll 1
#
# Keeps absorbing a number of points of xp (depending on the book) a second until you hold the correct component 
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{tpscroll:1b}}]}] -5 points
#
# IF you meet the required predicate (component AND correct spellbook score) begin casting the spell.
#
# Scroll of Translocation
execute if entity @a[predicate=atrium:scroll_translocation_req] run function atrium:magic/magicitems/spells/scroll_translocation
