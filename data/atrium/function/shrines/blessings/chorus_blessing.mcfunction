# Particles + Sound effect
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
execute at @s run playsound atrium:favor.chorus neutral @a[distance=..8] ~ ~ ~ 0.75 1 0.1
# Add Favor for this god
scoreboard players add @s chorus_favor 1
execute unless entity @s[scores={chorus_favor=31..}] run scoreboard players add @s chorus_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={chorus_favor=1..9}] run effect give @s minecraft:glowing 600 0
execute if entity @s[scores={chorus_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"light_purple"},{"text":"Are you really so determined to be seen?","italic":true,"color":"light_purple"},{"text":" \u06e9","color":"light_purple"}]
execute if entity @s[scores={chorus_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={chorus_favor=10..19}] run effect give @s minecraft:glowing 1200 0
execute if entity @s[scores={chorus_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"light_purple"},{"text":"You feel like you're being watched.","italic":true,"color":"light_purple"},{"text":" \u06e9","color":"light_purple"}]
execute if entity @s[scores={chorus_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={chorus_favor=20..29}] run effect give @s minecraft:glowing 2400 0
execute if entity @s[scores={chorus_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"light_purple"},{"text":"A shiver runs down your spine. All eyes are on you.","italic":true,"color":"light_purple"},{"text":" \u06e9","color":"light_purple"}]
execute if entity @s[scores={chorus_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={chorus_favor=30}] run effect give @s minecraft:glowing 2400 0
execute if entity @s[scores={chorus_favor=30}] run effect give @s minecraft:night_vision 2400 0
execute if entity @s[scores={chorus_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"light_purple"},{"text":"They have found you, and you have been blessed with eyes that truly see.","italic":true,"color":"light_purple"},{"text":" \u06e9","color":"light_purple"}]
execute if entity @s[scores={chorus_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={chorus_favor=10}] run advancement grant @s only atrium:belief/chorus_10
execute if entity @s[scores={chorus_favor=30}] run advancement grant @s only atrium:belief/chorus_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Chorus is now [","color":"gray"},{"score":{"name":"@s","objective":"chorus_favor"},"bold":true,"color":"light_purple"},{"text":"])","color":"gray"}]