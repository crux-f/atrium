# big poof
execute at @e[tag=atrium_giant,nbt=!{Passengers:[{id:"minecraft:zombie",Tags:["atrium_giant_brain"]}]}] run particle minecraft:poof ~ ~4 ~ 1 4 1 0.1 75
# summon zombies (25% chance each, 4 attempts)
execute at @e[tag=atrium_giant,nbt=!{Passengers:[{id:"minecraft:zombie",Tags:["atrium_giant_brain"]}]}] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~ ~4 ~ 
execute at @e[tag=atrium_giant,nbt=!{Passengers:[{id:"minecraft:zombie",Tags:["atrium_giant_brain"]}]}] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~ ~4 ~ 
execute at @e[tag=atrium_giant,nbt=!{Passengers:[{id:"minecraft:zombie",Tags:["atrium_giant_brain"]}]}] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~ ~4 ~ 
execute at @e[tag=atrium_giant,nbt=!{Passengers:[{id:"minecraft:zombie",Tags:["atrium_giant_brain"]}]}] if predicate atrium:percentage_chances/0.25_p run summon minecraft:zombie ~ ~4 ~ 
#
# Sfx
execute at @e[tag=atrium_giant,nbt=!{Passengers:[{id:"minecraft:zombie",Tags:["atrium_giant_brain"]}]}] run playsound minecraft:entity.husk.death hostile @a[distance=..50] ~ ~ ~ 1.5 0.75 0.75
#
# Kill all giants without brains
kill @e[tag=atrium_giant,nbt=!{Passengers:[{id:"minecraft:zombie",Tags:["atrium_giant_brain"]}]}]
