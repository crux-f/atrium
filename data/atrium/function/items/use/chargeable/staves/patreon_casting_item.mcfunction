# Runs from hold_chargeable_item
#
# If there are items in the left-most slot and the right-most slot of your hotbar that are not power slots, drop them.
# If there is an item in the center slot, drop it too.
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_patron:"konigin12"}}}}} if data entity @s {Inventory:[{Slot:4b}]} unless data entity @s {Inventory:[{Slot:4b,components:{"minecraft:custom_data":{atrium_power:1b}}}]} run function atrium:items/slot_control/drop_item_4
# Now that the slots are empty (items cannot be picked up again for 2 ticks), give the caster their spell options.
#
# konigin12 | Slot 4: Dance
execute if data entity @s {equipment:{offhand:{components:{"minecraft:custom_data":{atrium_patron:"konigin12"}}}}} run item replace entity @s hotbar.4 with minecraft:firework_star[minecraft:custom_model_data={strings:["atrium_ps_dance"]},minecraft:lore=[{text:"When Cast:","color":"gray","italic":false},{text:"Imbues the caster with"},{text:"the power of flight. When cast,"},{text:"you leap into the air and"},{text:"dance, bouncing 10 times."},{text:"You need not hold the staff to"},{text:"maintain this effect."}],minecraft:item_name={text:"Spell: Dance","color":"yellow"},minecraft:custom_data={atrium_power:1b,atrium_power_slot:4b}] 1