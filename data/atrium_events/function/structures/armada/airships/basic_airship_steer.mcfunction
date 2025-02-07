# Perform checks to make sure its safe to continue forward
function atrium_events:structures/armada/airships/basic_airship_pilot_check
#
# If the check fails it will automatically return out of this function back to basic_airship_move
#
#
# Add time to the next eastern move according to the airship's current speed
# (Append = adds time; Each additional airship will cause all airships moving east to move slower)
#
# Speed 1 (1 Block every 5 seconds)
execute if entity @s[tag=atrium_airship_speed_1] run schedule function atrium_events:structures/armada/airships/basic_airship_next_move 5s append
#
# Speed 2 (1 Block every 3 seconds)
execute if entity @s[tag=atrium_airship_speed_2] run schedule function atrium_events:structures/armada/airships/basic_airship_next_move 3s append
#
# Speed 3 (1 Block every second)
execute if entity @s[tag=atrium_airship_speed_3] run schedule function atrium_events:structures/armada/airships/basic_airship_next_move 1s append
#
# Speed 4 (1 Block every half second)
execute if entity @s[tag=atrium_airship_speed_4] run schedule function atrium_events:structures/armada/airships/basic_airship_next_move 10t append