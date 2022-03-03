# Remove 1 from the praying player's favor for all gods. (Since 2 was added this will result in +1 to chosen god, -1 to all others)
scoreboard players remove @a[scores={ghael_favor=1..},tag=pray] ghael_favor 1
scoreboard players remove @a[scores={aurora_favor=1..},tag=pray] aurora_favor 1
scoreboard players remove @a[scores={syrula_favor=1..},tag=pray] syrula_favor 1
scoreboard players remove @a[scores={geota_favor=1..},tag=pray] geota_favor 1
scoreboard players remove @a[scores={taraqsol_favor=1..},tag=pray] taraqsol_favor 1
scoreboard players remove @a[scores={messorum_favor=1..},tag=pray] messorum_favor 1
scoreboard players remove @a[scores={nox_favor=1..},tag=pray] nox_favor 1
scoreboard players remove @a[scores={quipster_favor=1..},tag=pray] quipster_favor 1
scoreboard players remove @a[scores={chorus_favor=1..},tag=pray] chorus_favor 1
scoreboard players remove @a[scores={oswald_favor=1..},tag=pray] oswald_favor 1
# Execute at the Resurrector - run the resurrect_start
execute at @a[tag=resurrector] run function atrium:shrines/resurrect_start
