# Ticks each spellbook score up once per second (activated by item_detect)
# 
#
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b,dirge_of_the_battlemage:1b}}]},level=5..] spellbook 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b,travelers_best_friend:1b}}]},level=5..] spellbook 1
scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b,the_legend_of_moonpelt:1b}}]},level=5..] spellbook 1
# scoreboard players add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b,i_myself_a_dream:1b}}]},level=14..] spellbook 1
#
# Keeps absorbing a number of points of xp (depending on the book) a second until you hold the correct component 
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b,dirge_of_the_battlemage:1b}}]}] -10 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b,travelers_best_friend:1b}}]}] -4 points
xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b,the_legend_of_moonpelt:1b}}]}] -4 points
#
# xp add @a[gamemode=!spectator,nbt={Inventory:[{Slot:-106b,tag:{spellbook:1b,i_myself_a_dream:1b}}]}] -25 points
#
# IF you meet the required predicate (component AND correct spellbook score) begin casting the spell.
#
# Dirge of the Battlemage - Iron Ingot
execute if entity @a[predicate=atrium:dirge_of_the_battlemage_req] as @a[predicate=atrium:dirge_of_the_battlemage_req] run function atrium:magic/magicitems/spells/dirge_of_the_battlemage
#
# Traveler's Best Friend - Hunting Trophy
execute if entity @a[predicate=atrium:travelers_best_friend_req] as @a[predicate=atrium:travelers_best_friend_req] run function atrium:magic/magicitems/spells/travelers_best_friend
#
# The Legend of Moonpelt - Raw Porkchop
execute if entity @a[predicate=atrium:the_legend_of_moonpelt_req] as @a[predicate=atrium:the_legend_of_moonpelt_req] run function atrium:magic/magicitems/spells/the_legend_of_moonpelt
#
#
#
# I, Myself, A Dream - Air Crystal
# execute if entity @a[predicate=atrium:i_myself_a_dream_req] run function atrium:magic/magicitems/spells/i_myself_a_dream
