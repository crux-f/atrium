# Reset score
scoreboard players reset @s charge
# Play SFX(s)
playsound minecraft:block.beacon.deactivate block @a[distance=..10] ~ ~ ~ 1 2 0.2
playsound minecraft:entity.breeze.shoot block @a[distance=..25] ~ ~ ~ 1 0 0.2
#
# Summon cannonball - power level 17 by default
summon fireball ~ ~7.5 ~ {Tags:["atrium_sky_cannonball"],ExplosionPower:17b,Invulnerable:1b,Motion:[0.0,0.5,0.0]}
# Power level of the cannonball has a chance of being lowered to 14 or raised to 20
# note: Since the lowering one is the last modification, its significantly more likely than the fireball being raised to 18.
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.17_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] ExplosionPower set value 20
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.20_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] ExplosionPower set value 14
# Chance of being slightly off-course to make things interesting
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.06_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] Motion[0] set value 0.35
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.06_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] Motion[0] set value -0.35
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.06_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] Motion[2] set value 0.35
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.06_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] Motion[2] set value -0.35
#
# Could veer even further off-course or slightly in a different direction
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.03_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] Motion[0] set value 0.15
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.03_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] Motion[0] set value -0.15
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.03_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] Motion[2] set value 0.15
execute positioned ~ ~8.5 ~ if predicate atrium:percentage_chances/0.03_p run data modify entity @n[type=fireball,distance=..3,tag=atrium_sky_cannonball] Motion[2] set value -0.15