# Drops whatever item is in a specific slot.
summon item ~ ~ ~ {PickupDelay:2,Tags:["atrium_drop_8"],Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":{text:"Extremely Reportale Egg"},"minecraft:lore":[{text:"Seems like something you"},{text:"should report to the Admins."}],"minecraft:custom_model_data":{strings:["atrium_strange_egg"]},"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
data modify entity @e[tag=atrium_drop_8,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:8b}]
item replace entity @s hotbar.8 with minecraft:air