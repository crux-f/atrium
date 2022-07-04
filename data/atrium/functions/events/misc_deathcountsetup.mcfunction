scoreboard objectives add deathCount deathCount {"text":"Deaths","color":"red"}
scoreboard objectives setdisplay belowName deathCount
schedule function atrium:events/misc_death_tracker 1s
