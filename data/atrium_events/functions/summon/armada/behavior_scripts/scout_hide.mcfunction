# Increase each scout's hiding score by 1 if they aren't currently targeting a player
scoreboard players add @e[tag=atrium_armada_scout,predicate=!atrium:entity/is_targeting_player] hiding 1
execute at @e[tag=atrium_armada_scout,predicate=!atrium:entity/is_targeting_player] run particle minecraft:smoke ~ ~0.25 ~ 0.5 1 0.5 0 1
#
# If any of them had long enough to hide (30 seconds), remove handitems, give invisibility, and set silent
execute as @e[tag=atrium_armada_scout,scores={hiding=30}] run data remove entity @s HandItems[0]
execute as @e[tag=atrium_armada_scout,scores={hiding=30}] run data merge entity @s {Silent:1b}
execute as @e[tag=atrium_armada_scout,scores={hiding=30}] run effect give @s invisibility 999999 0 false
#
# come out of hiding if in battle
# Leader gets a spyglass
execute as @e[tag=atrium_armada_scout,tag=atrium_scouting_party_leader,scores={hiding=30..}] at @s if entity @a[distance=..10,gamemode=survival] run data merge entity @s {Silent:0b,PersistenceRequired:1b,HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Scout\'s Crossbow","italic":false}'},scouts_crossbow:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:quick_charge",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.08,Operation:1,UUID:[I;-1816239232,-243186249,-2029629323,-1291332108],Slot:"mainhand"}]}},{id:"minecraft:spyglass",Count:1b,tag:{display:{Name:'{"text":"Spy-Sailor\'s Spyglass","italic":false}'},atrium_spy_sailors_spyglass:1b,AttributeModifiers:[{AttributeName:"generic.follow_range",Name:"generic.follow_range",Amount:0.25,Operation:1,UUID:[I;95612904,-2063644374,-1922784920,400963316],Slot:"offhand"}]}}],HandDropChances:[0.650F,0.100F]}
execute as @e[tag=atrium_armada_scout,tag=!atrium_scouting_party_leader,scores={hiding=30..}] at @s if entity @a[distance=..10,gamemode=survival] run data merge entity @s {Silent:0b,PersistenceRequired:1b,HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Scout\'s Crossbow","italic":false}'},scouts_crossbow:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:quick_charge",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.08,Operation:1,UUID:[I;1292105976,1899643869,-1140642191,-668303860],Slot:"mainhand"}]}},{}],HandDropChances:[0.650F,0.085F]}
execute as @e[tag=atrium_armada_scout,scores={hiding=30..}] at @s if entity @a[distance=..10,gamemode=survival] run effect clear @s invisibility
execute as @e[tag=atrium_armada_scout,predicate=atrium:entity/is_targeting_player] at @s if entity @a[distance=..10,gamemode=survival] run scoreboard players set @s hiding 10
#
# Run again in 1 second if an event is still going on
execute if entity @a[tag=event] run schedule function atrium_events:summon/armada/behavior_scripts/scout_hide 1s