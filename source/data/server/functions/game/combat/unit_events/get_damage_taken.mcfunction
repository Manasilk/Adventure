#mitigated = (abs + res)/10
scoreboard players set @s[scores={dmg_in0=1..9}] dmg_in0 10
scoreboard players operation @s dmg_in0 += @s dmg_in1
scoreboard players operation @s dmg_in0 += @s dmg_in2
scoreboard players operation @s dmg_in0 += @s dmg_in3

scoreboard players operation @s dmg_in1 += @s dmg_in2
scoreboard players operation @s dmg_in1 += @s dmg_in3
#total = taken/10
scoreboard players operation @s dmg_in1 /= #const 10
scoreboard players operation @s dmg_in0 /= #const 10
scoreboard players operation @s[scores={dmg_in1=1..}] dmg_in0 -= @s dmg_in1