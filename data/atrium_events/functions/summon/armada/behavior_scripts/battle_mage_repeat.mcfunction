# Repeat every tick.
schedule function atrium_events:summon/armada/behavior_scripts/battle_mage_repeat 1t
#
# Evoker notes: Started summoning vexes = 99. Vexes appear = 80ish. Fangs appear = 39.
#
# If the battle mage just summoned vexes, launch a spell rocket down at them.
execute as @e[tag=atrium_armada_battle_mage] at @s if data entity @s {SpellTicks:81} on target at @s run summon firework_rocket ~ ~60 ~ {LifeTime:2000,ShotAtAngle:1b,Motion:[0.0,-1.0,0.0],Passengers:[{id:"minecraft:potion",Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:harming"}}}],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;8750469],FadeColors:[I;9791980]}]}}}}
execute as @e[tag=atrium_armada_battle_mage] at @s if data entity @s {SpellTicks:81} on target at @s positioned ~ ~60 ~ run function atrium:summon/summon_poof
# At every battle mage who just summoned vexes: 75% chance to make them silent and invisible then kill them.
execute as @e[tag=atrium_armada_battle_mage] at @s if data entity @s {SpellTicks:81} as @e[distance=..10,type=minecraft:vex,predicate=atrium:percentage_chances/0.75_p] at @s run function atrium_events:summon/armada/behavior_scripts/looters/remove_vexes