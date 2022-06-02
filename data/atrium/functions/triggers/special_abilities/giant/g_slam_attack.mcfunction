# Perform the slam attack at every giant that has the setup tag.
#
# (Particles)
execute at @e[tag=slam_setup] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 0.25 1 0.4 150
# (Sound)
execute at @e[tag=slam_setup] positioned ~ ~ ~ run playsound minecraft:entity.zombie.attack_wooden_door hostile @a[distance=..30] ~ ~ ~ 1 0.25 0.3
#
# Summon arrow with tag giant_hurl that does 10 damage at each player within 7 blocks
execute as @e[tag=slam_setup] at @s run execute at @e[distance=..7,gamemode=!spectator,type=!#atrium:giants_ignore] run summon arrow ~ ~2.1 ~ {pickup:0b,player:0b,damage:13d,Motion:[0.0,-2.0,0.0],Tags:["giant_hurl"],CustomName:'{"text":"Giant","italic":false}',SoundEvent:"entity.zombie.attack_iron_door"}
execute as @e[tag=slam_setup] at @s run execute as @e[distance=..10,tag=giant_hurl] run data modify entity @s Owner set from entity @e[limit=1,tag=atrium_giant_body,distance=..20] UUID
#
# Arrow knockback is determined by the position of the arrow's owner, NOT by the motion of the arrow. So setting the UUID to the giant makes the slight knockback be away
# from the giant. I was trying to make the knockback a lot further, but I can't work out a way to apply any kind of Punch effect to the arrow. Oh well.
#
#
# Remove tag from anyone who has it
tag @e[tag=slam_setup] remove slam_setup
