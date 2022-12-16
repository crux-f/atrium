# Initiate Prayer
tellraw @s {"text":"You touch the shrine. It is as solid as it appears.","italic":true,"color":"gray"}
#
# If you have never prayed to this god before, set your score with this god to 0.
execute unless entity @s[scores={geota_favor=-30..30}] run scoreboard players set @s geota_favor 0
#
# If the player does not have enough XP to pray, let them know / give lore text.
execute if entity @s[scores={geota_favor=0..9},level=0] run tellraw @s ["",{"text":"The stone is cold.","italic":true,"color":"gray"},{"text":"\n"},{"text":"(You currently have [","color":"gray"},{"score":{"name":"@s","objective":"geota_favor"},"bold":true,"color":"gray"},{"text":"] Favor with Geota. You need at least 1 level of EXP to pray.)","color":"gray"}]
execute if entity @s[scores={geota_favor=10..19},level=..1] run tellraw @s ["",{"text":"She is engrossed in her work. Your prayers are unanswered.","italic":true,"color":"gray"},{"text":"\n"},{"text":"(You currently have [","color":"gray"},{"score":{"name":"@s","objective":"geota_favor"},"bold":true,"color":"gray"},{"text":"] Favor with Geota. You need at least 2 levels of EXP to pray.)","color":"gray"}]
execute if entity @s[scores={geota_favor=20..29},level=..2] run tellraw @s ["",{"text":"You lean on the shrine. Perhaps she just needs time.","italic":true,"color":"gray"},{"text":"\n"},{"text":"(You currently have [","color":"gray"},{"score":{"name":"@s","objective":"geota_favor"},"bold":true,"color":"gray"},{"text":"] Favor with Geota. You need at least 3 levels of EXP to pray.)","color":"gray"}]
execute if entity @s[scores={geota_favor=30},level=..4] run tellraw @s ["",{"text":"You can feel her pride in you, but nothing more.","italic":true,"color":"gray"},{"text":"\n"},{"text":"(You currently have [","color":"gray"},{"score":{"name":"@s","objective":"geota_favor"},"bold":true,"color":"gray"},{"text":"] Favor with Geota. You need at least 5 levels of EXP to pray.)","color":"gray"}]
# If the player has enough XP to pray: Send them to the Blessing script.
# Note: Add 2 favor unless they are at 30 since the Favor Reduction script will be removing 1 from all gods
execute if entity @s[scores={geota_favor=30},level=5..] run function atrium:shrines/blessings/geota_blessing
execute if entity @s[scores={geota_favor=20..29},level=3..] run function atrium:shrines/blessings/geota_blessing
execute if entity @s[scores={geota_favor=10..19},level=2..] run function atrium:shrines/blessings/geota_blessing
execute if entity @s[scores={geota_favor=0..9},level=1..] run function atrium:shrines/blessings/geota_blessing



