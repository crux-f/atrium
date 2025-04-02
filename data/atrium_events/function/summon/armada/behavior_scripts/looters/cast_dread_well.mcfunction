# Run as fangs summoned by the necromancer who has already had its warmup expire, but before the fangs visually appear
#
# Summon dread well
summon minecraft:area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,CustomName:'{"text":"Dread Well","color":"yellow"}',Particle:{type:"entity_effect",color:7673249},ReapplicationDelay:15,Radius:0.5f,RadiusPerTick:0.1f,RadiusOnUse:0f,Duration:8,DurationOnUse:0,Color:2495818,Tags:["atrium_dread_well"],potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1},{id:"minecraft:nausea",amplifier:0,duration:140}]}}
# sfx
playsound minecraft:item.nether_wart.plant hostile @a[distance=..5] ~ ~ ~ 2 1 0.5
#
# Remove fangs
kill @s