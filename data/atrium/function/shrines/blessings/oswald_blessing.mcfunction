# Particles + Sound effect
execute at @s run particle minecraft:item minecraft:oak_sapling ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
execute at @s run playsound atrium:favor.oswald neutral @a[distance=..8] ~ ~ ~ 0.75 1 0.1
# Add Favor for this god
scoreboard players add @s oswald_favor 1
execute unless entity @s[scores={oswald_favor=31..}] run scoreboard players add @s oswald_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={oswald_favor=1..9}] run effect give @s minecraft:health_boost 600 0
execute if entity @s[scores={oswald_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"light_gray"},{"text":"You breathe in... the scent of flowers and fresh bread surrounds you.","italic":true,"color":"light_gray"},{"text":" \u06e9","color":"light_gray"}]
execute if entity @s[scores={oswald_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={oswald_favor=10..19}] run effect give @s minecraft:health_boost 1200 0
execute if entity @s[scores={oswald_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"light_gray"},{"text":"You brush your hand against the shrine, the course fibers of the roots running through your fingers.","italic":true,"color":"light_gray"},{"text":" \u06e9","color":"light_gray"}]
execute if entity @s[scores={oswald_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={oswald_favor=20..29}] run effect give @s minecraft:health_boost 2400 0
execute if entity @s[scores={oswald_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"light_gray"},{"text":"You can almost hear a faint, quiet humming. The Peasant God watches over you, in his own small way.","italic":true,"color":"light_gray"},{"text":" \u06e9","color":"light_gray"}]
execute if entity @s[scores={oswald_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={oswald_favor=30}] run effect give @s minecraft:health_boost 2400 0
execute if entity @s[scores={oswald_favor=30}] run effect give @s minecraft:regeneration 2400 0
execute if entity @s[scores={oswald_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"light_gray"},{"text":"Small roots have crept across your arm without you noticing. The lifeblood of the creator flows through you.","italic":true,"color":"light_gray"},{"text":" \u06e9","color":"light_gray"}]
execute if entity @s[scores={oswald_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={oswald_favor=10}] run advancement grant @s only atrium:belief/oswald_10
execute if entity @s[scores={oswald_favor=30}] run advancement grant @s only atrium:belief/oswald_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Oswald is now [","color":"gray"},{"score":{"name":"@s","objective":"oswald_favor"},"bold":true,"color":"white"},{"text":"])","color":"gray"}]