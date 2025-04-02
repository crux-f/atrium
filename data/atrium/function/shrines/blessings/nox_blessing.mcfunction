# Particles + Sound effect
particle minecraft:smoke ~ ~ ~ 0.1 0.25 0.1 0.01 40 force
playsound atrium:favor.nox neutral @a[distance=..10] ~ ~ ~ 1 1 0.1
# Add Favor for this god
scoreboard players add @s nox_favor 1
execute unless entity @s[scores={nox_favor=31..}] run scoreboard players add @s nox_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={nox_favor=1..9}] run effect give @s minecraft:resistance 600 0
execute if entity @s[scores={nox_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"red"},{"text":"The atmosphere here is suffused with a cold, calculating aura.","italic":true,"color":"red"},{"text":" \u06e9","color":"red"}]
execute if entity @s[scores={nox_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={nox_favor=10..19}] run effect give @s minecraft:resistance 1200 0
execute if entity @s[scores={nox_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"red"},{"text":"You keep coming back. She offers you power you can't refuse.","italic":true,"color":"red"},{"text":" \u06e9","color":"red"}]
execute if entity @s[scores={nox_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={nox_favor=20..29}] run effect give @s minecraft:resistance 2400 1
execute if entity @s[scores={nox_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"red"},{"text":"You can feel her, just behind you. But you never see her.","italic":true,"color":"red"},{"text":" \u06e9","color":"red"}]
execute if entity @s[scores={nox_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={nox_favor=30}] run effect give @s minecraft:resistance 2400 1
execute if entity @s[scores={nox_favor=30}] run effect give @s minecraft:invisibility 2400 0
execute if entity @s[scores={nox_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"red"},{"text":"The shadows cling to you, and won't let go.","italic":true,"color":"red"},{"text":" \u06e9","color":"red"}]
execute if entity @s[scores={nox_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={nox_favor=10}] run advancement grant @s only atrium:belief/nox_10
execute if entity @s[scores={nox_favor=30}] run advancement grant @s only atrium:belief/nox_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Nox is now [","color":"gray"},{"score":{"name":"@s","objective":"nox_favor"},"bold":true,"color":"red"},{"text":"])","color":"gray"}]