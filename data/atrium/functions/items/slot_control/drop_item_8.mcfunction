# Drops whatever item is in a specific slot.
summon item ~ ~ ~ {PickupDelay:2,Tags:["atrium_drop_8"],Item:{id:"minecraft:egg",Count:1b,tag:{display:{Name:'{"text":"Extremely Reportable Egg","italic":false}',Lore:['{"text":"(report this to crux_f)"}']}}}}
data modify entity @e[tag=atrium_drop_8,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:8b}]
item replace entity @s hotbar.8 with minecraft:air