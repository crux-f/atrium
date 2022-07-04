# Since the Saturation effect is super bugged, im giving messorum his boyfriend's abilities until they fix it
#
# Grant shrine advancement
advancement grant @p[distance=..10] until atrium:belief/higher_power
# UNLESS the nearest player to the shrine has a score of 30 or higher, add 2 to the player's Favor.
execute unless entity @p[distance=..5,scores={distance=..5,messorum_favor=30..}] run scoreboard players add @p[distance=..5,level=1..,nbt=!{SelectedItem:{id:'minecraft:diamond'}}] messorum_favor 2
# ADD the 'pray' tag to the nearest player NOT in spectator holding a res item
tag @p[gamemode=!spectator,distance=..5,level=1..,nbt=!{SelectedItem:{id:'minecraft:diamond'}},nbt=!{SelectedItem:{id:'minecraft:totem_of_undying'}}] add pray
# Tag the player holding the res item who just clicked on the shrine as the Resurrector
tag @p[nbt={SelectedItem:{id:'minecraft:diamond'}},gamemode=!spectator,distance=..5] add resurrector
tag @p[nbt={SelectedItem:{id:'minecraft:totem_of_undying'}},gamemode=!spectator,distance=..5] add resurrector
# run the favor exchange function
function atrium:shrines/favor_exchange
# UNLESS nearest player has no EXP levels, give em the particles
execute at @p unless entity @p[tag=pray,level=0] run particle minecraft:falling_dust minecraft:obsidian ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
# Text, ability, and cost for favor 1-9
execute unless entity @p[tag=pray,scores={messorum_favor=10..}] run effect give @p[tag=pray,level=1..] minecraft:health_boost 600 0
execute unless entity @p[tag=pray,scores={messorum_favor=2..}] run tellraw @p[tag=pray,level=1..] ["",{"text":"\u06e9 ","color":"dark_purple"},{"text":"You breathe in the smell of dry grass and thyme...","italic":true,"color":"dark_purple"},{"text":" \u06e9","color":"dark_purple"}]
execute unless entity @p[tag=pray,scores={messorum_favor=10..}] run xp add @p[tag=pray,level=1..] -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @p[tag=pray,scores={messorum_favor=10..19}] run effect give @p[tag=pray,level=2..] minecraft:health_boost 1200 0
execute if entity @p[tag=pray,scores={messorum_favor=10}] run tellraw @p[tag=pray,level=2..] ["",{"text":"\u06e9 ","color":"dark_purple"},{"text":"You can feel him watching over you. It isn't your turn yet, you think.","italic":true,"color":"dark_purple"},{"text":" \u06e9","color":"dark_purple"}]
execute if entity @p[tag=pray,scores={messorum_favor=10..19}] run xp add @p[tag=pray,level=2..] -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @p[tag=pray,scores={messorum_favor=20..29}] run effect give @p[tag=pray,level=3..] minecraft:health_boost 2400 0
execute if entity @p[tag=pray,scores={messorum_favor=20}] run tellraw @p[tag=pray,level=3..] ["",{"text":"\u06e9 ","color":"dark_purple"},{"text":"Death's presence at your side is comforting, somehow. It no longer feels like you're running from him.","italic":true,"color":"dark_purple"},{"text":" \u06e9","color":"dark_purple"}]
execute if entity @p[tag=pray,scores={messorum_favor=20..29}] run xp add @p[tag=pray,level=3..] -3 levels
# Text, ability, and cost for favor 30
execute if entity @p[tag=pray,scores={messorum_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:health_boost 2400 0
execute if entity @p[tag=pray,scores={messorum_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:absorption 2400 1
execute if entity @p[tag=pray,scores={messorum_favor=30}] run tellraw @p[tag=pray,level=5..] ["",{"text":"\u06e9 ","color":"dark_purple"},{"text":"Sometimes, the strike of a weapon misses you by an inch. Sometimes, the fall has a hidden lake beneath. Luck is one word for it. Or maybe He's just being lenient with you.","italic":true,"color":"dark_purple"},{"text":" \u06e9","color":"dark_purple"}]
execute if entity @p[tag=pray,scores={messorum_favor=30}] run xp add @p[tag=pray,level=5..] -5 levels
# Advancement progression
execute if entity @p[tag=pray,scores={messorum_favor=10}] run advancement grant @p only atrium:belief/messorum_10
execute if entity @p[tag=pray,scores={messorum_favor=20}] run advancement grant @p only atrium:belief/messorum_20
execute if entity @p[tag=pray,scores={messorum_favor=30}] run advancement grant @p only atrium:belief/messorum_30
# Remove the pray tag at the end of the prayer.
tag @p[tag=pray] remove pray
# NEW: Religion Noises!!!
playsound minecraft:atrium.favor.messorum master @a[distance=..8] ~ ~ ~ 1 1 0.1
