# Grant shrine advancement
advancement grant @p[distance=..10] until atrium:belief/higher_power
# UNLESS the nearest player to the shrine has a score of 30 or higher, add 2 to the player's Favor.
execute unless entity @p[distance=..5,scores={oswald_favor=30..}] run scoreboard players add @p[distance=..5,level=1..,nbt=!{SelectedItem:{id:"minecraft:golden_apple"}}] oswald_favor 2
# ADD the 'pray' tag to the nearest player NOT in spectator holding a res item
tag @p[gamemode=!spectator,distance=..5,level=1..,nbt=!{SelectedItem:{id:"minecraft:golden_apple"}}] add pray
# Tag the player holding the res item who just clicked on the shrine as the Resurrector
tag @p[nbt={SelectedItem:{id:"minecraft:golden_apple"}},gamemode=!spectator,distance=..5] add resurrector
# run the favor exchange function
function atrium:shrines/favor_exchange
# UNLESS nearest player has no EXP levels, give em the particles
execute at @p unless entity @p[tag=pray,level=0] run particle minecraft:item minecraft:oak_sapling ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
# Text, ability, and cost for favor 1-9
execute unless entity @p[tag=pray,scores={oswald_favor=10..}] run effect give @p[tag=pray,level=1..] minecraft:health_boost 600 0
execute unless entity @p[tag=pray,scores={oswald_favor=2..}] run tellraw @p[tag=pray,level=1..] ["",{"text":"\u06e9 ","color":"light_gray"},{"text":"You breathe in... the scent of flowers and fresh bread surrounds you.","italic":true,"color":"light_gray"},{"text":" \u06e9","color":"light_gray"}]
execute unless entity @p[tag=pray,scores={oswald_favor=10..}] run xp add @p[tag=pray,level=1..] -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @p[tag=pray,scores={oswald_favor=10..19}] run effect give @p[tag=pray,level=2..] minecraft:health_boost 1200 0
execute if entity @p[tag=pray,scores={oswald_favor=10}] run tellraw @p[tag=pray,level=2..] ["",{"text":"\u06e9 ","color":"light_gray"},{"text":"You brush your hand against the shrine, the course fibers of the roots running through your fingers.","italic":true,"color":"light_gray"},{"text":" \u06e9","color":"light_gray"}]
execute if entity @p[tag=pray,scores={oswald_favor=10..19}] run xp add @p[tag=pray,level=2..] -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @p[tag=pray,scores={oswald_favor=20..29}] run effect give @p[tag=pray,level=3..] minecraft:health_boost 2400 0
execute if entity @p[tag=pray,scores={oswald_favor=20}] run tellraw @p[tag=pray,level=3..] ["",{"text":"\u06e9 ","color":"light_gray"},{"text":"You can almost hear a faint, quiet humming. The Peasant God watches over you, in his own small way.","italic":true,"color":"light_gray"},{"text":" \u06e9","color":"light_gray"}]
execute if entity @p[tag=pray,scores={oswald_favor=20..29}] run xp add @p[tag=pray,level=3..] -3 levels
# Text, ability, and cost for favor 30
execute if entity @p[tag=pray,scores={oswald_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:health_boost 2400 0
execute if entity @p[tag=pray,scores={oswald_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:regeneration 2400 0
execute if entity @p[tag=pray,scores={oswald_favor=30}] run tellraw @p[tag=pray,level=5..] ["",{"text":"\u06e9 ","color":"light_gray"},{"text":"Small roots have crept across your arm without you noticing. The lifeblood of the creator flows through you.","italic":true,"color":"light_gray"},{"text":" \u06e9","color":"light_gray"}]
execute if entity @p[tag=pray,scores={oswald_favor=30}] run xp add @p[tag=pray,level=5..] -5 levels
# Advancement progression
execute if entity @p[tag=pray,scores={oswald_favor=10}] run advancement grant @p only atrium:belief/oswald_10
execute if entity @p[tag=pray,scores={oswald_favor=20}] run advancement grant @p only atrium:belief/oswald_20
execute if entity @p[tag=pray,scores={oswald_favor=30}] run advancement grant @p only atrium:belief/oswald_30
# Remove the pray tag at the end of the prayer.
tag @p[tag=pray] remove pray
# Religion Noises!
playsound minecraft:atrium.favor.oswald master @a[distance=..8] ~ ~ ~ 1 1 0.1
