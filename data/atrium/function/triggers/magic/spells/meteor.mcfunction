# Already has caster position(s) stored from charge script
#
# Summon meteor 1 block ahead of the player's eyes (where they are aiming)
execute at @s anchored eyes run summon fireball ^ ^ ^1 {Fire:20,CustomNameVisible:0b,ExplosionPower:3b,Tags:["atrium_meteor_spell"],CustomName:'{"text":"Meteor","color":"red","italic":false}'}
# Sets the player to be the Owner of the meteor
execute at @s positioned ^ ^ ^1 run data modify entity @e[limit=1,tag=atrium_meteor_spell,distance=..1,sort=nearest] Owner set from entity @s UUID
#
# SFX
#
execute at @s anchored eyes run particle minecraft:flame ^ ^ ^1.5 0.25 0.25 0.25 0.1 50
execute at @s anchored eyes run particle dust_color_transition{from_color:[1.000,0.267,0.000],scale:1,to_color:[0.129,0.039,0.000]} ^ ^ ^1.5 0.45 0.45 0.45 0.5 75 normal
playsound minecraft:entity.player.attack.crit player @a[distance=..15] ~ ~ ~ 1 0 0.25
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete
