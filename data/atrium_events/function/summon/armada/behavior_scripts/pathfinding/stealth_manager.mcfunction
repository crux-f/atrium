# For each currently hiding entity - if they aren't currently targeting a player, increase each entity's hiding score by 1
# Note: Limiting the stealth mechanic to pillager type entities only to improve performance
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,predicate=!atrium:entity/is_targeting_survival_player] unless entity @s[scores={atrium_hiding=31..}] run scoreboard players add @s atrium_hiding 1
execute at @e[type=minecraft:pillager,tag=atrium_currently_hiding,predicate=!atrium:entity/is_targeting_survival_player,scores={atrium_hiding=..29}] run particle minecraft:smoke ~ ~0.25 ~ 0.5 1 0.5 0 3
#
# If any of them had long enough to hide (30 seconds), remove handitems and set silent
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,scores={atrium_hiding=30}] run data remove entity @s HandItems
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,scores={atrium_hiding=30}] run data remove entity @s ArmorItems[3]
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,scores={atrium_hiding=30}] run data modify entity @s Silent set value true
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,scores={atrium_hiding=30}] run effect give @s invisibility infinite 0 false
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,scores={atrium_hiding=30}] at @s run playsound minecraft:entity.wandering_trader.disappeared hostile @a[distance=..15] ~ ~ ~ 1 0.5 0.1
#
# come out of hiding if there's a player within 10 blocks OR if they're targeting a player and that player is within 8
# Restore items + turn off silent
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,scores={atrium_hiding=30..}] at @s if entity @a[distance=..15,gamemode=survival] run effect clear @s minecraft:invisibility
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,tag=atrium_armada_engineer,scores={atrium_hiding=30..}] at @s if entity @a[distance=..15,gamemode=survival] run data merge entity @s {Silent:false,HandItems:[{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:custom_model_data":{strings:["atrium_hammer"]}}},{}]}
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,tag=atrium_armada_infiltrator,scores={atrium_hiding=30..}] at @s if entity @a[distance=..15,gamemode=survival] run data merge entity @s {Silent:false,HandItems:[{id:"minecraft:crossbow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:quick_charge":3,"minecraft:piercing":1}}}},{id:"minecraft:tipped_arrow",count:2,components:{"minecraft:custom_name":'{"italic":false,"text":"Negative Energy Bolt"}',"minecraft:lore":['"Infused with dark magic,"','"these crossbow bolts are"','"only granted to operatives"','"involved in missions which"','"require discretion."'],"minecraft:custom_data":{atrium_negative_energy_bolt:1b},"minecraft:potion_contents":"minecraft:harming"}}],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":1,"minecraft:soul_speed":3}}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":1,"minecraft:swift_sneak":1}}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":1}}}},{id:"minecraft:observer",count:1,components:{"minecraft:block_state":{powered:"true"}}}]}
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,predicate=atrium:entity/is_targeting_survival_player] at @s if entity @a[distance=..8,gamemode=survival] run scoreboard players set @s atrium_hiding 10
execute as @e[type=minecraft:pillager,tag=atrium_currently_hiding,predicate=atrium:entity/is_targeting_survival_player] at @s if entity @a[distance=..8,gamemode=survival] run effect clear @s minecraft:invisibility
#
# Run again in 1 second if an event is still going on
execute if entity @a[tag=event] run schedule function atrium_events:summon/armada/behavior_scripts/pathfinding/stealth_manager 1s