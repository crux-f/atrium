# Some entities get special particles all the time. 
execute at @s[tag=atrium_flare_spell] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal
execute at @s[tag=atrium_fire_aura] run particle minecraft:flame ~ ~1 ~ 0.1 0.2 0.1 0.03 3 normal
execute at @s[tag=atrium_terror_aura] run particle dust{color:[0.180,1.000,0.235],scale:2} ~ ~ ~ 0.5 0.5 0.5 0.5 10 normal
execute at @s[tag=atrium_glow_particles] run particle minecraft:glow ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute at @s[tag=atrium_portal_aura] run particle minecraft:portal ~ ~ ~ 0.2 0.2 0.2 0 1 normal
execute at @s[tag=atrium_dust_sometimes] if predicate atrium:percentage_chances/0.15_p run particle minecraft:falling_dust{block_state:"minecraft:stone"} ~ ~ ~ 0.5 0.75 0.5 0.01 1 normal
execute at @s[tag=atrium_fire_sometimes] if predicate atrium:percentage_chances/0.15_p run particle minecraft:flame ~ ~ ~ 0.5 0.75 0.5 0.01 1 normal
execute at @s[tag=atrium_drip_water_sometimes] if predicate atrium:percentage_chances/0.10_p run particle minecraft:dripping_water ~ ~ ~ 0.5 0.75 0.5 0.01 1 normal
execute at @s[tag=atrium_glimmer_sometimes] if predicate atrium:percentage_chances/0.10_p run particle minecraft:end_rod ~ ~ ~ 0.5 0.75 0.5 0.01 1 normal
# execute at @s[tag=atrium_explosion_particles] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 normal