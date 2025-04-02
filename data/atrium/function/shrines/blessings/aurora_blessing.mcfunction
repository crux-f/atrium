# Particles + Sound effect
particle minecraft:small_gust ~ ~ ~ 0.1 0.25 0.1 0.1 15 normal
playsound atrium:favor.aurora neutral @a[distance=..10] ~ ~ ~ 1 1 0.1
# Add Favor for this god
scoreboard players add @s aurora_favor 1
execute unless entity @s[scores={aurora_favor=31..}] run scoreboard players add @s aurora_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={aurora_favor=1..9}] run effect give @s minecraft:slow_falling 150 0
execute if entity @s[scores={aurora_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"gray"},{"text":"Gravity seems to lessen its hold on you.","italic":true,"color":"gray"},{"text":" \u06e9","color":"gray"}]
execute if entity @s[scores={aurora_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={aurora_favor=10..19}] run effect give @s minecraft:slow_falling 300 0
execute if entity @s[scores={aurora_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"gray"},{"text":"An unnatural grace fills your body, along with an urge to dance.","italic":true,"color":"gray"},{"text":" \u06e9","color":"gray"}]
execute if entity @s[scores={aurora_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={aurora_favor=20..29}] run effect give @s minecraft:slow_falling 600 0
execute if entity @s[scores={aurora_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"gray"},{"text":"Wisps of cloud dance around your legs playfully.","italic":true,"color":"gray"},{"text":" \u06e9","color":"gray"}]
execute if entity @s[scores={aurora_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={aurora_favor=30}] run effect give @s minecraft:slow_falling 1200 0
execute if entity @s[scores={aurora_favor=30}] run effect give @s minecraft:levitation 60 0
execute if entity @s[scores={aurora_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"gray"},{"text":"Colors flow through the sky that only you can see... You wish to join them.","italic":true,"color":"gray"},{"text":" \u06e9","color":"gray"}]
execute if entity @s[scores={aurora_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={aurora_favor=10}] run advancement grant @s only atrium:belief/aurora_10
execute if entity @s[scores={aurora_favor=30}] run advancement grant @s only atrium:belief/aurora_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Aurora is now [","color":"gray"},{"score":{"name":"@s","objective":"aurora_favor"},"bold":true,"color":"gray"},{"text":"])","color":"gray"}]