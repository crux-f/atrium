# Drops whatever item is in a specific slot.
summon item ~ ~ ~ {PickupDelay:2,Tags:["atrium_drop_1"],Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":'{"text":"Extremely Reportable Egg"}',"minecraft:lore":['{"text":"Seems like something you"}','{"text":"should report to the Admins."}'],"minecraft:custom_model_data":333081,"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
data modify entity @e[tag=atrium_drop_1,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:1b}]
item replace entity @s hotbar.1 with minecraft:air