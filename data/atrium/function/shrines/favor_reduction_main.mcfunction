# Remove 1 from the praying player's favor for the main 10 gods. (Since 2 was added this will result in +1 to chosen god, -1 to all others)
# Doesn't go below 0.
#
scoreboard players remove @s[scores={aurora_favor=1..}] aurora_favor 1
scoreboard players remove @s[scores={chorus_favor=1..}] chorus_favor 1
scoreboard players remove @s[scores={geota_favor=1..}] geota_favor 1
scoreboard players remove @s[scores={ghael_favor=1..}] ghael_favor 1
scoreboard players remove @s[scores={messorum_favor=1..}] messorum_favor 1
scoreboard players remove @s[scores={nox_favor=1..}] nox_favor 1
scoreboard players remove @s[scores={oswald_favor=1..}] oswald_favor 1
scoreboard players remove @s[scores={quipster_favor=1..}] quipster_favor 1
scoreboard players remove @s[scores={syrula_favor=1..}] syrula_favor 1
scoreboard players remove @s[scores={taraqsol_favor=1..}] taraqsol_favor 1
#
# Reduce favor with each of the old gods by 2 (if possible).
scoreboard players remove @s[scores={maw_favor=1}] maw_favor 1
scoreboard players remove @s[scores={nameless_favor=1}] nameless_favor 1
scoreboard players remove @s[scores={xenos_favor=1}] xenos_favor 1
scoreboard players remove @s[scores={maw_favor=2..}] maw_favor 2
scoreboard players remove @s[scores={nameless_favor=2..}] nameless_favor 2
scoreboard players remove @s[scores={xenos_favor=2..}] xenos_favor 2
