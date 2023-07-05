# 25% chance of breaking blocks every second
execute at @e[tag=atrium_living_battering_ram] anchored eyes unless block ^ ^ ^1 #atrium_events:unsiegeable_blocks if predicate atrium:percentage_chances/0.25_p run setblock ^ ^ ^1 air
execute at @e[tag=atrium_living_battering_ram] anchored eyes unless block ^ ^ ^1 #atrium_events:unsiegeable_blocks if predicate atrium:percentage_chances/0.25_p run setblock ^ ^ ^1 air
execute at @e[tag=atrium_living_battering_ram] anchored eyes unless block ^ ^ ^1 #atrium_events:unsiegeable_blocks if predicate atrium:percentage_chances/0.25_p run setblock ^ ^ ^1 air
execute if entity @a[tag=event] run schedule function atrium_events:summon/armada/behavior_scripts/living_battering_ram_repeat 1s