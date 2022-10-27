# Drops whatever item is in a specific slot.
summon item ~ ~ ~ {PickupDelay:2,Tags:["atrium_drop_7"],Item:{id:"minecraft:egg",Count:1b,tag:{display:{Name:'{"text":"Extremely Reportable Egg","italic":false}',Lore:['{"text":"(report this to crux_f)"}']}}}}
data modify entity @e[tag=atrium_drop_7,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:7b}]
item replace entity @s hotbar.7 with minecraft:air