# Particles + Sound effect
particle minecraft:falling_dust{block_state:"minecraft:obsidian"} ~ ~ ~ 0.1 0.25 0.1 0.1 40 force
playsound atrium:favor.messorum neutral @a[distance=..10] ~ ~ ~ 0.75 1 0.1
# Add Favor for this god
scoreboard players add @s messorum_favor 1
execute unless entity @s[scores={messorum_favor=31..}] run scoreboard players add @s messorum_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={messorum_favor=1..9}] run effect give @s minecraft:health_boost 600 0
execute if entity @s[scores={messorum_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_purple"},{"text":"You breathe in the smell of dry grass and thyme...","italic":true,"color":"dark_purple"},{"text":" \u06e9","color":"dark_purple"}]
execute if entity @s[scores={messorum_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={messorum_favor=10..19}] run effect give @s minecraft:health_boost 1200 0
execute if entity @s[scores={messorum_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_purple"},{"text":"You can feel him watching over you. It isn't your turn yet, you think.","italic":true,"color":"dark_purple"},{"text":" \u06e9","color":"dark_purple"}]
execute if entity @s[scores={messorum_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={messorum_favor=20..29}] run effect give @s minecraft:health_boost 2400 0
execute if entity @s[scores={messorum_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_purple"},{"text":"Death's presence at your side is comforting, somehow. It no longer feels like you're running from him.","italic":true,"color":"dark_purple"},{"text":" \u06e9","color":"dark_purple"}]
execute if entity @s[scores={messorum_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={messorum_favor=30}] run effect give @s minecraft:health_boost 2400 0
execute if entity @s[scores={messorum_favor=30}] run effect give @s minecraft:absorption 2400 2
execute if entity @s[scores={messorum_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_purple"},{"text":"Sometimes, the strike of a weapon misses you by an inch. Sometimes, the fall has a hidden lake beneath. Luck is one word for it. Or maybe He's just being lenient with you.","italic":true,"color":"dark_purple"},{"text":" \u06e9","color":"dark_purple"}]
execute if entity @s[scores={messorum_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={messorum_favor=10}] run advancement grant @s only atrium:belief/messorum_10
execute if entity @s[scores={messorum_favor=30}] run advancement grant @s only atrium:belief/messorum_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Messorum is now [","color":"gray"},{"score":{"name":"@s","objective":"messorum_favor"},"bold":true,"color":"dark_purple"},{"text":"])","color":"gray"}]