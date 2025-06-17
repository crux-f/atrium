# - 
# not sick
execute as @p[distance=..10,gamemode=!spectator] unless predicate atrium:effects/if_nausea_any run function atrium:structures/z/unfair_trap
execute as @p[distance=..10,gamemode=!spectator] unless predicate atrium:effects/if_nausea_any run function atrium:structures/z/unfair_trap
execute as @p[distance=..10,gamemode=!spectator] unless predicate atrium:effects/if_nausea_any run function atrium:structures/z/unfair_trap
# sick
#
execute as @p[distance=..10,gamemode=!spectator] if predicate atrium:effects/if_nausea_any run playsound minecraft:ui.button.click block @a[distance=..10] ~ ~ ~ 1 1 1
#
execute as @p[distance=..10,gamemode=!spectator] if predicate atrium:effects/if_nausea_any positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute as @p[distance=..10,gamemode=!spectator] if predicate atrium:effects/if_nausea_any positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
#
execute as @p[distance=..10,gamemode=!spectator] if predicate atrium:effects/if_nausea_any positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute as @p[distance=..10,gamemode=!spectator] if predicate atrium:effects/if_nausea_any positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
#
execute as @p[distance=..10,gamemode=!spectator] if predicate atrium:effects/if_nausea_any positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute as @p[distance=..10,gamemode=!spectator] if predicate atrium:effects/if_nausea_any positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
#
execute as @p[distance=..10,gamemode=!spectator] if predicate atrium:effects/if_nausea_any positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air
execute as @p[distance=..10,gamemode=!spectator] if predicate atrium:effects/if_nausea_any positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:air