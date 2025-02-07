# Summons a group of foes based on the relative position of the pilot.
# All raiders are automatically added to the crew with a tag every time the ship moves, so they will move with it.
#
# Pilot SFX
playsound minecraft:entity.vindicator.celebrate hostile @a[distance=..10] ~ ~ ~ 0.75 0.8 0.1 
#
# 0-4 Armada Sky-Sailors above-deck
execute positioned ^2 ^-0.5 ^-9 if predicate atrium:percentage_chances/0.60_p run function atrium_events:summon/armada/single/sky_sailor
execute positioned ^-2 ^-0.5 ^-9 if predicate atrium:percentage_chances/0.60_p run function atrium_events:summon/armada/single/sky_sailor
#
execute positioned ^2 ^-0.5 ^-15 if predicate atrium:percentage_chances/0.60_p run function atrium_events:summon/armada/single/sky_sailor
execute positioned ^-2 ^-0.5 ^-15 if predicate atrium:percentage_chances/0.60_p run function atrium_events:summon/armada/single/sky_sailor
#
# 0-2 Armada Crusaders above-deck
execute positioned ^2 ^-0.5 ^-12 if predicate atrium:percentage_chances/0.50_p run function atrium_events:summon/armada/single/crusader
execute positioned ^-2 ^-0.5 ^-12 if predicate atrium:percentage_chances/0.50_p run function atrium_events:summon/armada/single/crusader
#
# 0-2 Armada Sky-Sailors below-deck
execute positioned ^2 ^-4.5 ^-14 if predicate atrium:percentage_chances/0.50_p run function atrium_events:summon/armada/single/sky_sailor
execute positioned ^-2 ^-4.5 ^-14 if predicate atrium:percentage_chances/0.50_p run function atrium_events:summon/armada/single/sky_sailor
