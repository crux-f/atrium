execute at @e[tag=scrambler] run execute at @r[gamemode=survival,distance=..70] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["confuserune"]}
function atrium:events/fx/fx_confuserune
execute at @e[tag=confuserune] run playsound minecraft:entity.evoker.cast_spell master @a[distance=..40] ~ ~ ~ 1 1.3 1

schedule function atrium:events/special/scrambler_confusion2 10s
