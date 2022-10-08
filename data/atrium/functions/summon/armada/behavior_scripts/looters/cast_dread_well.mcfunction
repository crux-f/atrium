# Run as fangs summoned by the necromancer who has already had its warmup expire, but before the fangs visually appear
#
# Summon dread well
summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,CustomName:'{"text":"Dread Well","color":"dark_purple","italic":false}',Particle:"entity_effect",ReapplicationDelay:15,Radius:0.5f,RadiusPerTick:0.1f,RadiusOnUse:0f,Duration:8,DurationOnUse:0,Color:2495818,Tags:["dread_well"],Effects:[{Id:7,Amplifier:0b,Duration:1,ShowParticles:1b},{Id:9,Amplifier:0b,Duration:180,ShowParticles:1b}]}
# sfx
playsound minecraft:item.nether_wart.plant hostile @a[distance=..3] ~ ~ ~ 2 1 0.5
#
# Remove fangs
kill @s