# Grant shrine advancement
advancement grant @p[distance=..10] until atrium:belief/higher_power
# UNLESS the nearest player to the shrine has a score of 30 or higher, add 2 to the player's Favor.
execute unless entity @p[distance=..5,scores={ghael_favor=30..}] run scoreboard players add @p[distance=..5,level=1..,nbt=!{SelectedItem:{id:"minecraft:golden_apple"}}] ghael_favor 2
# ADD the 'pray' tag to the nearest player NOT in spectator holding a res item
tag @p[gamemode=!spectator,distance=..5,level=1..,nbt=!{SelectedItem:{id:"minecraft:golden_apple"}}] add pray
# Tag the player holding the res item who just clicked on the shrine as the Resurrector
tag @p[nbt={SelectedItem:{id:"minecraft:golden_apple"}},gamemode=!spectator,distance=..5] add resurrector
# run the favor exchange function
function atrium:shrines/favor_exchange
# UNLESS nearest player has no EXP levels, give em the particles
execute at @p unless entity @p[level=0] run particle minecraft:flame ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
# Text, ability, and cost for favor 1-9
execute unless entity @p[tag=pray,scores={ghael_favor=10..}] run effect give @p[tag=pray,level=1..] minecraft:strength 600 0
execute unless entity @p[tag=pray,scores={ghael_favor=2..}] run tellraw @p[tag=pray,level=1..] ["",{"text":"\u06e9 ","color":"gold"},{"text":"You feel a warmth kindle within you.","italic":true,"color":"gold"},{"text":" \u06e9","color":"gold"}]
execute unless entity @p[tag=pray,scores={ghael_favor=10..}] run xp add @p[tag=pray,level=1..] -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @p[tag=pray,scores={ghael_favor=10..19}] run effect give @p[tag=pray,level=2..] minecraft:strength 1200 0
execute if entity @p[tag=pray,scores={ghael_favor=10}] run tellraw @p[tag=pray,level=2..] ["",{"text":"\u06e9 ","color":"gold"},{"text":"You feel the sensation of flames curling up around you.","italic":true,"color":"gold"},{"text":" \u06e9","color":"gold"}]
execute if entity @p[tag=pray,scores={ghael_favor=10..19}] run xp add @p[tag=pray,level=2..] -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @p[tag=pray,scores={ghael_favor=20..29}] run effect give @p[tag=pray,level=3..] minecraft:strength 2400 0
execute if entity @p[tag=pray,scores={ghael_favor=20}] run tellraw @p[tag=pray,level=3..] ["",{"text":"\u06e9 ","color":"gold"},{"text":"You gaze into the flames. The flames gaze into you.","italic":true,"color":"gold"},{"text":" \u06e9","color":"gold"}]
execute if entity @p[tag=pray,scores={ghael_favor=20..29}] run xp add @p[tag=pray,level=3..] -3 levels
# Text, ability, and cost for favor 30
execute if entity @p[tag=pray,scores={ghael_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:strength 2400 0
execute if entity @p[tag=pray,scores={ghael_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:fire_resistance 2400 0
execute if entity @p[tag=pray,scores={ghael_favor=30}] run tellraw @p[tag=pray,level=5..] ["",{"text":"\u06e9 ","color":"gold"},{"text":"The flames before you burn within you.","italic":true,"color":"gold"},{"text":" \u06e9","color":"gold"}]
execute if entity @p[tag=pray,scores={ghael_favor=30}] run xp add @p[tag=pray,level=5..] -5 levels
# Advancement progression
execute if entity @p[tag=pray,scores={ghael_favor=10}] run advancement grant @p only atrium:belief/ghael_10
execute if entity @p[tag=pray,scores={ghael_favor=20}] run advancement grant @p only atrium:belief/ghael_20
execute if entity @p[tag=pray,scores={ghael_favor=30}] run advancement grant @p only atrium:belief/ghael_30
#
# GHAEL ONLY = If you previously got a 30+ favor advancement from a different god, grant a special advancement.
execute if entity @p[tag=pray,scores={ghael_favor=30},advancements={atrium:belief/aurora_30=true}] run advancement grant @p only atrium:belief/peak_insolence
execute if entity @p[tag=pray,scores={ghael_favor=30},advancements={atrium:belief/chorus_30=true}] run advancement grant @p only atrium:belief/peak_insolence
execute if entity @p[tag=pray,scores={ghael_favor=30},advancements={atrium:belief/geota_30=true}] run advancement grant @p only atrium:belief/peak_insolence
execute if entity @p[tag=pray,scores={ghael_favor=30},advancements={atrium:belief/messorum_30=true}] run advancement grant @p only atrium:belief/peak_insolence
execute if entity @p[tag=pray,scores={ghael_favor=30},advancements={atrium:belief/nox_30=true}] run advancement grant @p only atrium:belief/peak_insolence
execute if entity @p[tag=pray,scores={ghael_favor=30},advancements={atrium:belief/oswald_30=true}] run advancement grant @p only atrium:belief/peak_insolence
execute if entity @p[tag=pray,scores={ghael_favor=30},advancements={atrium:belief/quipster_30=true}] run advancement grant @p only atrium:belief/peak_insolence
execute if entity @p[tag=pray,scores={ghael_favor=30},advancements={atrium:belief/syrula_30=true}] run advancement grant @p only atrium:belief/peak_insolence
execute if entity @p[tag=pray,scores={ghael_favor=30},advancements={atrium:belief/taraqsol_30=true}] run advancement grant @p only atrium:belief/peak_insolence
#
# Remove the pray tag at the end of the prayer.
tag @p[tag=pray] remove pray
# Religion Noises!
playsound minecraft:atrium.favor.ghael master @a[distance=..8] ~ ~ ~ 1 1 0.1
