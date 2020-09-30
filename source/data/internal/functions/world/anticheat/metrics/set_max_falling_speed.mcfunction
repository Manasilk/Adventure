execute store result score @s _ac.fall_spd run data get entity @s FallDistance 10

scoreboard players set @s[scores={_ac.fall_spd=20..,_ac.v_lim=0..49}] _ac.v_lim 45
scoreboard players set @s[scores={_ac.fall_spd=100..,_ac.v_lim=45..79}] _ac.v_lim 80
scoreboard players set @s[scores={_ac.fall_spd=200..,_ac.v_lim=80..99}] _ac.v_lim 100
scoreboard players set @s[scores={_ac.fall_spd=400..,_ac.v_lim=100..134}] _ac.v_lim 135
scoreboard players set @s[scores={_ac.fall_spd=800..,_ac.v_lim=135..144}] _ac.v_lim 145
scoreboard players set @s[scores={_ac.fall_spd=1000..,_ac.v_lim=145..149}] _ac.v_lim 150
scoreboard players set @s[scores={_ac.fall_spd=1300..,_ac.v_lim=150..174}] _ac.v_lim 175
scoreboard players set @s[scores={_ac.fall_spd=1600..,_ac.v_lim=175..199}] _ac.v_lim 200