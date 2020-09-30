#prevent stall and exaggerated values
scoreboard players set @s[scores={stat_played=21..}] stat_played 20

#ticks to sec
scoreboard players add @s[scores={stat_played=20}] stat_played_s 1
scoreboard players set @s[scores={stat_played=20}] stat_played 0
#sec to min
scoreboard players add @s[scores={stat_played_s=60}] stat_played_m 1
scoreboard players set @s[scores={stat_played_s=60}] stat_played_s 0
#min to hour
scoreboard players add @s[scores={stat_played_m=60}] stat_played_h 1
scoreboard players set @s[scores={stat_played_m=60}] stat_played_m 0
#hour to days
scoreboard players add @s[scores={stat_played_h=24}] stat_played_d 1
scoreboard players set @s[scores={stat_played_h=24}] stat_played_h 0