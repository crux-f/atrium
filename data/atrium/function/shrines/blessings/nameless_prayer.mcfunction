# Initiate Prayer
tellraw @s {"text":"You touch the shrine. Your hand goes slightly numb for a moment.","italic":true,"color":"gray"}
#
# If you have never prayed to this god before, set your score with this god to 0.
execute unless entity @s[scores={nameless_favor=-30..30}] run scoreboard players set @s nameless_favor 0
#
# If the player does not have enough XP to pray, let them know / give lore text.
execute if entity @s[scores={nameless_favor=0..9},level=0] run tellraw @s ["",{"text":"Nothing.","italic":true,"color":"gray"},{"text":"\n"},{"text":"(You currently have [","color":"gray"},{"score":{"name":"@s","objective":"nameless_favor"},"bold":true,"color":"gray"},{"text":"] Favor with The Nameless. You need at least 1 level of EXP to pray.)","color":"gray"}]
execute if entity @s[scores={nameless_favor=10..19},level=..1] run tellraw @s ["",{"text":"It's almost like the silence got louder.","italic":true,"color":"gray"},{"text":"\n"},{"text":"(You currently have [","color":"gray"},{"score":{"name":"@s","objective":"nameless_favor"},"bold":true,"color":"gray"},{"text":"] Favor with The Nameless. You need at least 2 levels of EXP to pray.)","color":"gray"}]
execute if entity @s[scores={nameless_favor=20..29},level=..2] run tellraw @s ["",{"text":"You can't remember why you came here.","italic":true,"color":"gray"},{"text":"\n"},{"text":"(You currently have [","color":"gray"},{"score":{"name":"@s","objective":"nameless_favor"},"bold":true,"color":"gray"},{"text":"] Favor with The Nameless. You need at least 3 levels of EXP to pray.)","color":"gray"}]
execute if entity @s[scores={nameless_favor=30},level=..4] run tellraw @s ["",{"text":"The words die in your throat.","italic":true,"color":"gray"},{"text":"\n"},{"text":"(You currently have [","color":"gray"},{"score":{"name":"@s","objective":"nameless_favor"},"bold":true,"color":"gray"},{"text":"] Favor with The Nameless. You need at least 5 levels of EXP to pray.)","color":"gray"}]
# If the player has enough XP to pray: Send them to the Blessing script.
# Note: Add 2 favor unless they are at 30 since the Favor Reduction script will be removing 1 from all gods
execute if entity @s[scores={nameless_favor=30},level=5..] run function atrium:shrines/blessings/nameless_blessing
execute if entity @s[scores={nameless_favor=20..29},level=3..] run function atrium:shrines/blessings/nameless_blessing
execute if entity @s[scores={nameless_favor=10..19},level=2..] run function atrium:shrines/blessings/nameless_blessing
execute if entity @s[scores={nameless_favor=0..9},level=1..] run function atrium:shrines/blessings/nameless_blessing



