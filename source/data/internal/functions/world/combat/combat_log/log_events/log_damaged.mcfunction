#Fetch damage taken and mitigated values
function internal:world/combat/combat_log/check_timestamp
function internal:world/combat/unit_events/get_damage_dealt

#execute if score @s dmg_out1 matches 0 run function internal:world/combat/combat_log/log_events/damage_dealt
#execute if score @s dmg_out1 matches 1.. run function internal:world/combat/combat_log/log_events/damage_dealt_mitigated
function internal:world/combat/combat_log/log_events/damage_dealt

scoreboard players reset @s dmg_out0
scoreboard players reset @s dmg_out1
scoreboard players reset @s dmg_out2
tag @s remove _t.h0_m0
tag @s remove _t.h0_m1
tag @s remove _t.h1_m0
tag @s remove _t.h1_m1
tag @s remove player.damaged_entity