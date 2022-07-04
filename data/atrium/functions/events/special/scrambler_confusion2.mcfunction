execute at @e[tag=confuserune] run playsound minecraft:entity.illusioner.prepare_blindness master @a[distance=..30] ~ ~ ~ 1 1.2 1
execute at @e[tag=confuserune] run particle minecraft:flash ~ ~ ~ 5 5 5 1 100 normal
execute at @e[tag=confuserune] run effect give @a[distance=..5] minecraft:nausea 10 0 true
kill @e[tag=confuserune]
