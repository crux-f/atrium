# Line
execute at Esthyr run tellraw @a[name=!"Esthyr",tag=event] ["",{"text":"[???] ","color":"gray"},{"text":"E","color":"light_purple"},{"text":"sthyr: ","color":"gray"},{"text":"...S","color":"white"},{"text":"a","color":"gray"},{"text":"y ","color":"white"},{"text":"'","color":"gray"},{"text":"hi' ","color":"white"},{"text":"t","color":"gray"},{"text":"o th","color":"white"},{"text":"e","color":"gray"},{"text":" m","color":"white"},{"text":"o","color":"gray"},{"text":"on f","color":"white"},{"text":"o","color":"gray"},{"text":"r m","color":"white"},{"text":"e.","color":"gray"}]
#
# Start leave fx
function atrium:events/fx/fx_e_arrival
# Run the next thing
schedule function atrium:events/quest_events/iteration3/lore/e_cs_16 8s