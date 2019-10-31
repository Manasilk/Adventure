execute unless score @s dmg_out0 > #const INT_MIN run scoreboard players operation @s dmg_out0 = #dbc.temp dmg_in0
scoreboard players reset #dbc.temp dmg_in0
#mitigated = (abs + res)/10
scoreboard players set @s[scores={dmg_out0=1..9}] 10
scoreboard players operation @s dmg_out0 += @s dmg_out1
scoreboard players operation @s dmg_out0 += @s dmg_out2
scoreboard players operation @s dmg_out0 += @s dmg_out3

scoreboard players operation @s dmg_out1 += @s dmg_out2
scoreboard players operation @s dmg_out1 += @s dmg_out3
#total = dealt/10 - mitigated
scoreboard players operation @s dmg_out0 /= #const 10
scoreboard players operation @s dmg_out1 /= #const 10
scoreboard players operation @s[scores={dmg_out1=1..}] dmg_out0 -= @s dmg_out1