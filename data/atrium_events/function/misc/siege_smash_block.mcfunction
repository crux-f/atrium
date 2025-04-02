# Used by the Living Battering Ram for events, but could be useful later.
setblock ~ ~ ~ air destroy
execute if predicate atrium:percentage_chances/0.50_p run playsound minecraft:entity.zombie.attack_wooden_door block @a[distance=..5] ~ ~ ~ 0.65 1.5 0.1
execute if predicate atrium:percentage_chances/0.07_p run playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..5] ~ ~ ~ 0.65 1.5 0.1