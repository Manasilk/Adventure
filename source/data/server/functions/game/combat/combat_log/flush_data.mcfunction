scoreboard players reset @s dmg_out0
scoreboard players reset @s dmg_out1
scoreboard players reset @s dmg_out2

scoreboard players reset @s dmg_in0
scoreboard players reset @s dmg_in1
scoreboard players reset @s dmg_in2
scoreboard players reset @s dmg_in3
scoreboard players reset @s TEMP

scoreboard players operation @s exp_gained = @s exp_stored
function server:game/entity/get_entity_health