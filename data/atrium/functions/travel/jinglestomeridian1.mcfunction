execute at @p[nbt={SelectedItem:{tag:{airship_ticket:1b}}}] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.5 30 normal
execute if entity @p[nbt={SelectedItem:{tag:{airship_ticket:1b}}}] run tellraw @a[distance=..10] ["",{"text":"[Captain Jingles]: ","color":"green"},{"text":"Thank you for your patronage. We'll be off, then."}]
execute if entity @p[nbt={SelectedItem:{tag:{airship_ticket:1b}}}] run schedule function atrium:travel/jinglestomeridian2 10s
execute if entity @p[nbt={SelectedItem:{tag:{airship_ticket:1b}}}] run clear @p minecraft:paper{airship_ticket:1b} 1
