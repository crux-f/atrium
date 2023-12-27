# Particles + Sound effect
execute at @s run particle minecraft:crimson_spore ~ ~1.5 ~ 0.1 0.5 0.1 0.1 15 normal
execute at @s run playsound atrium:favor.maw neutral @a[distance=..8] ~ ~ ~ 0.75 1 0.1
# Add Favor for this god
scoreboard players add @s maw_favor 1
execute unless entity @s[scores={maw_favor=31..}] run scoreboard players add @s maw_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_ancient
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={maw_favor=1..9}] run effect give @s minecraft:strength 300 0
execute if entity @s[scores={maw_favor=1..9}] run effect give @s minecraft:hunger 300 0
execute if entity @s[scores={maw_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_red"},{"text":"You feel stronger. But it isn't enough.","italic":true,"color":"dark_red"},{"text":" \u06e9","color":"dark_red"}]
execute if entity @s[scores={maw_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={maw_favor=10..19}] run effect give @s minecraft:strength 450 0
execute if entity @s[scores={maw_favor=10..19}] run effect give @s minecraft:hunger 450 0
execute if entity @s[scores={maw_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_red"},{"text":"More is always better.","italic":true,"color":"dark_red"},{"text":" \u06e9","color":"dark_red"}]
execute if entity @s[scores={maw_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={maw_favor=20..29}] run effect give @s minecraft:strength 900 0
execute if entity @s[scores={maw_favor=20..29}] run effect give @s minecraft:hunger 900 0
execute if entity @s[scores={maw_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_red"},{"text":"Your veins flare a deep red, before returning to normal.","italic":true,"color":"dark_red"},{"text":" \u06e9","color":"dark_red"}]
execute if entity @s[scores={maw_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={maw_favor=30}] run effect give @s minecraft:strength 1700 0
execute if entity @s[scores={maw_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_red"},{"text":"Never enough.","italic":true,"color":"dark_red"},{"text":" \u06e9","color":"dark_red"}]
execute if entity @s[scores={maw_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={maw_favor=10}] run advancement grant @s only atrium:belief/maw_10
execute if entity @s[scores={maw_favor=30}] run advancement grant @s only atrium:belief/maw_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with The Maw is now [","color":"gray"},{"score":{"name":"@s","objective":"maw_favor"},"bold":true,"color":"dark_red"},{"text":"])","color":"gray"}]