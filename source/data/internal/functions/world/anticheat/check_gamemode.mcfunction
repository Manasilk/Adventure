scoreboard players set @s[gamemode=survival] player_gamemode 1
scoreboard players set @s[gamemode=adventure] player_gamemode 2
scoreboard players set @s[gamemode=creative] player_gamemode 4
scoreboard players set @s[gamemode=spectator] player_gamemode 8

execute unless score @s player_gamemode = #anticheat _ac.gamemode run function internal:world/anticheat/actions/update_gamemode