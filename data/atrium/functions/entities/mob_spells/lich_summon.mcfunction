# Cast by Lich. Redirected from mob_spell_charge OR from atrium:structures/sanctum/behavior_scripts/lich_idle
#
# At least one Sleepwalker
function atrium:summon/sanctum/sleepwalker
# 50% chance of a second one
execute if predicate atrium:percentage_chances/0.50_p run function atrium:summon/sanctum/sleepwalker
# 25% chance of a third one
execute if predicate atrium:percentage_chances/0.25_p run function atrium:summon/sanctum/sleepwalker
# 25% chance of one Risen Cloud Dancer if I can find it??
execute if predicate atrium:percentage_chances/0.25_p run function atrium:summon/sanctum/risen_cloud_dancer
# 10% chance of one Risen Cloud Dancer if I can find it??
execute if predicate atrium:percentage_chances/0.10_p run function atrium:summon/sanctum/risen_cloud_dancer
# 100% if he is threat 9 or higher
execute if score @s atrium_threat matches 9.. run function atrium:summon/sanctum/sleepwalker
execute if score @s atrium_threat matches 9.. run function atrium:summon/sanctum/risen_cloud_dancer
execute if score @s atrium_threat matches 9.. run function atrium:summon/sanctum/risen_cloud_dancer
execute if score @s atrium_threat matches 9.. run function atrium:summon/sanctum/risen_cloud_dancer
execute if score @s atrium_threat matches 9.. run function atrium:summon/sanctum/risen_cloud_dancer
# If you get to threat 10, there is a 50% chance he uses the nuclear option.
execute if score @s atrium_threat matches 12.. if predicate atrium:percentage_chances/0.50_p run function atrium:summon/sanctum/death_knight
#
# Particles
function atrium:summon/summon_poof
playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..50] ~ ~ ~ 1 0.1 0.1
# Reset score
scoreboard players set @s charge 0
# Chances for a longer cooldown
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20
execute if predicate atrium:percentage_chances/0.25_p run scoreboard players remove @s charge 20