# If the Living Battering Ram is targeting a player in survival, destroy blocks in front of it.
execute as @e[type=minecraft:ravager,tag=atrium_living_battering_ram] at @s if predicate atrium:entity/is_targeting_survival_player anchored eyes run function atrium_events:summon/armada/behavior_scripts/seige_forward
#
# If the Living Battering Ram is currently performing its Roar attack, destroy blocks in a line in front of it.
# Note: Won't trigger for every single Roar since this script only runs every 1-1.5 seconds.
execute as @e[type=minecraft:ravager,tag=atrium_living_battering_ram] anchored eyes at @s unless data entity @s {RoarTick:0} run function atrium_events:summon/armada/behavior_scripts/battering_ram_roar
#
# Repeat if an event is happening. Sometimes it takes longer to run to give it some unpredictability.
execute if entity @a[tag=event] run schedule function atrium_events:summon/armada/behavior_scripts/living_battering_ram_repeat 10t
# execute if entity @a[tag=event] if predicate atrium:percentage_chances/0.50_p run schedule function atrium_events:summon/armada/behavior_scripts/living_battering_ram_repeat 1s append
execute if entity @a[tag=event] if predicate atrium:percentage_chances/0.35_p run schedule function atrium_events:summon/armada/behavior_scripts/living_battering_ram_repeat 10t append