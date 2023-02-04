# for admins to move them for people or remove them when their patreon subscription ends
execute at @e[tag=atrium_seamwalkers_door,distance=..5,limit=1,sort=nearest] run particle flash ~ ~2.5 ~ 0 0 0 0 10 normal
execute at @e[tag=atrium_seamwalkers_door,distance=..5,limit=1,sort=nearest] run playsound entity.enderman.teleport block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
execute if entity @e[tag=atrium_seamwalkers_door,distance=..5,limit=1,sort=nearest] run function atrium:items/give/placeable_structures/seamwalkers_door_placer
kill @e[tag=atrium_seamwalkers_door,distance=..5,limit=1,sort=nearest]
