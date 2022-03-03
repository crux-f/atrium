# Grant shrine advancement
advancement grant @p[distance=..10] until atrium:belief/higher_power
# UNLESS the nearest player to the shrine has a score of 30 or higher, add 2 to the player's Favor.
execute unless entity @p[distance=..5,scores={syrula_favor=30..}] run scoreboard players add @p[distance=..5,level=1..,nbt=!{SelectedItem:{id:'minecraft:diamond'}}] syrula_favor 2
# ADD the 'pray' tag to the nearest player NOT in spectator holding a res item
tag @p[gamemode=!spectator,distance=..5,level=1..,nbt=!{SelectedItem:{id:'minecraft:diamond'}},nbt=!{SelectedItem:{id:'minecraft:totem_of_undying'}}] add pray
# Tag the player holding the res item who just clicked on the shrine as the Resurrector
tag @p[nbt={SelectedItem:{id:'minecraft:diamond'}},gamemode=!spectator] add resurrector
tag @p[nbt={SelectedItem:{id:'minecraft:totem_of_undying'}},gamemode=!spectator] add resurrector
# run the favor exchange function
function atrium:shrines/favor_exchange
# UNLESS nearest player has no EXP levels, give em the particles
execute at @p unless entity @p[tag=pray,level=0] run particle minecraft:bubble_pop ~ ~1 ~ 0.1 0.5 0.1 0.01 40 force
# Text, ability, and cost for favor 1-9
execute unless entity @p[tag=pray,scores={syrula_favor=10..}] run effect give @p[tag=pray,level=1..] minecraft:water_breathing 600 0
execute unless entity @p[tag=pray,scores={syrula_favor=2..}] run tellraw @p[tag=pray,level=1..] ["",{"text":"\u06e9 ","color":"blue"},{"text":"Small, glowing gills emerge on your neck. Your heart rate increases slightly.","italic":true,"color":"blue"},{"text":" \u06e9","color":"blue"}]
execute unless entity @p[tag=pray,scores={syrula_favor=10..}] run xp add @p[tag=pray,level=1..] -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @p[tag=pray,scores={syrula_favor=10..19}] run effect give @p[tag=pray,level=2..] minecraft:water_breathing 1200 0
execute if entity @p[tag=pray,scores={syrula_favor=10}] run tellraw @p[tag=pray,level=2..] ["",{"text":"\u06e9 ","color":"blue"},{"text":"The shrine smells like seawater. You become acutely aware of the amount of water within you.","italic":true,"color":"blue"},{"text":" \u06e9","color":"blue"}]
execute if entity @p[tag=pray,scores={syrula_favor=10..19}] run xp add @p[tag=pray,level=2..] -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @p[tag=pray,scores={syrula_favor=20..29}] run effect give @p[tag=pray,level=3..] minecraft:water_breathing 2400 0
execute if entity @p[tag=pray,scores={syrula_favor=20}] run tellraw @p[tag=pray,level=3..] ["",{"text":"\u06e9 ","color":"blue"},{"text":"The longer you stay ashore, the more you long for a voyage.","italic":true,"color":"blue"},{"text":" \u06e9","color":"blue"}]
execute if entity @p[tag=pray,scores={syrula_favor=20..29}] run xp add @p[tag=pray,level=3..] -3 levels
# Text, ability, and cost for favor 30
execute if entity @p[tag=pray,scores={syrula_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:water_breathing 2400 0
execute if entity @p[tag=pray,scores={syrula_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:conduit_power 2400 0
execute if entity @p[tag=pray,scores={syrula_favor=30}] run tellraw @p[tag=pray,level=5..] ["",{"text":"\u06e9 ","color":"blue"},{"text":"You can feel the sea. Its majesty, its mysteries. Perhaps it has chosen you.","italic":true,"color":"blue"},{"text":" \u06e9","color":"blue"}]
execute if entity @p[tag=pray,scores={syrula_favor=30}] run xp add @p[tag=pray,level=5..] -5 levels
# Advancement progression
execute if entity @p[tag=pray,scores={syrula_favor=10}] run advancement grant @p only atrium:belief/syrula_10
execute if entity @p[tag=pray,scores={syrula_favor=20}] run advancement grant @p only atrium:belief/syrula_20
execute if entity @p[tag=pray,scores={syrula_favor=30}] run advancement grant @p only atrium:belief/syrula_30
# Remove the pray tag at the end of the prayer.
tag @p[tag=pray] remove pray
# NEW: Religion Noises!!!
playsound minecraft:atrium.favor.syrula master @a[distance=..8] ~ ~ ~ 1 1 0.1
