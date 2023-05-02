# Repeat every tick.
schedule function atrium_events:summon/armada/behavior_scripts/necromancer_repeat 1t
#
# Evoker notes: Started summoning vexes = 99. Vexes appear = 80ish. Fangs appear = 39.
#
# Replace any fangs that necromancers own with dread wells when the cooldown runs out.
execute at @e[tag=atrium_armada_necromancer] run tag @e[type=minecraft:evoker_fangs,distance=..25] add atrium_necromancer_fangs
#
execute as @e[tag=atrium_necromancer_fangs] at @s if data entity @s {Warmup:1} run function atrium_events:summon/armada/behavior_scripts/looters/cast_dread_well
execute as @e[tag=atrium_necromancer_fangs] at @s if data entity @s {Warmup:0} run function atrium_events:summon/armada/behavior_scripts/looters/cast_dread_well
#
# At every necromancer who just summoned vexes: replace the vexes with undead, then make them silent and invisible then kill them.
execute as @e[tag=atrium_armada_necromancer] at @s if data entity @s {SpellTicks:81} as @e[distance=..10,type=minecraft:vex] at @s run function atrium_events:summon/armada/behavior_scripts/looters/summon_undead
#

