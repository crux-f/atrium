# Grant shrine advancement
advancement grant @p[distance=..10] until atrium:belief/higher_power
# UNLESS the nearest player to the shrine has a score of 30 or higher, add 2 to the player's Favor.
execute unless entity @p[distance=..5,scores={geota_favor=30..}] run scoreboard players add @p[distance=..5,level=1..,nbt=!{SelectedItem:{id:"minecraft:golden_apple"}}] geota_favor 2
# ADD the 'pray' tag to the nearest player NOT in spectator holding a res item
tag @p[gamemode=!spectator,distance=..5,level=1..,nbt=!{SelectedItem:{id:"minecraft:golden_apple"}}] add pray
# Tag the player holding the res item who just clicked on the shrine as the Resurrector
tag @p[nbt={SelectedItem:{id:"minecraft:golden_apple"}},gamemode=!spectator,distance=..5] add resurrector
# run the favor exchange function
function atrium:shrines/favor_exchange
# UNLESS nearest player has no EXP levels, give em the particles
execute at @p unless entity @p[tag=pray,level=0] run particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 40 force
# Text, ability, and cost for favor 1-9
execute unless entity @p[tag=pray,scores={geota_favor=10..}] run effect give @p[tag=pray,level=1..] minecraft:haste 600 0
execute unless entity @p[tag=pray,scores={geota_favor=2..}] run tellraw @p[tag=pray,level=1..] ["",{"text":"\u06e9 ","color":"dark_green"},{"text":"This shrine has an unwavering aura. You feel emboldened.","italic":true,"color":"dark_green"},{"text":" \u06e9","color":"dark_green"}]
execute unless entity @p[tag=pray,scores={geota_favor=10..}] run xp add @p[tag=pray,level=1..] -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @p[tag=pray,scores={geota_favor=10..19}] run effect give @p[tag=pray,level=2..] minecraft:haste 1200 0
execute if entity @p[tag=pray,scores={geota_favor=10}] run tellraw @p[tag=pray,level=2..] ["",{"text":"\u06e9 ","color":"dark_green"},{"text":"You're ready. Whatever lies below, you know you'll find it.","italic":true,"color":"dark_green"},{"text":" \u06e9","color":"dark_green"}]
execute if entity @p[tag=pray,scores={geota_favor=10..19}] run xp add @p[tag=pray,level=2..] -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @p[tag=pray,scores={geota_favor=20..29}] run effect give @p[tag=pray,level=3..] minecraft:haste 2400 0
execute if entity @p[tag=pray,scores={geota_favor=20}] run tellraw @p[tag=pray,level=3..] ["",{"text":"\u06e9 ","color":"dark_green"},{"text":"She is proud of you, you're sure of it. The earth hides so much beauty, and only you can uncover it.","italic":true,"color":"dark_green"},{"text":" \u06e9","color":"dark_green"}]
execute if entity @p[tag=pray,scores={geota_favor=20..29}] run xp add @p[tag=pray,level=3..] -3 levels
# Text, ability, and cost for favor 30
execute if entity @p[tag=pray,scores={geota_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:haste 2400 0
execute if entity @p[tag=pray,scores={geota_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:saturation 2400 0
execute if entity @p[tag=pray,scores={geota_favor=30}] run tellraw @p[tag=pray,level=5..] ["",{"text":"\u06e9 ","color":"dark_green"},{"text":"You are unstoppable. Earth gives way before you out of respect.","italic":true,"color":"dark_green"},{"text":" \u06e9","color":"dark_green"}]
execute if entity @p[tag=pray,scores={geota_favor=30}] run xp add @p[tag=pray,level=5..] -5 levels
# Advancement progression
execute if entity @p[tag=pray,scores={geota_favor=10}] run advancement grant @p only atrium:belief/geota_10
execute if entity @p[tag=pray,scores={geota_favor=20}] run advancement grant @p only atrium:belief/geota_20
execute if entity @p[tag=pray,scores={geota_favor=30}] run advancement grant @p only atrium:belief/geota_30
# Remove the pray tag at the end of the prayer.
tag @p[tag=pray] remove pray
# Religion Noises!
playsound minecraft:atrium.favor.geota master @a[distance=..8] ~ ~ ~ 1 1 0.1
