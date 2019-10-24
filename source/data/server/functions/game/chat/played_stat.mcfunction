tellraw @s {"translate":"stats.played_time","with":[{"score":{"name":"@s","objective":"stat_played_d"}},{"score":{"name":"@s","objective":"stat_played_h"}},{"score":{"name":"@s","objective":"stat_played_m"}},{"score":{"name":"@s","objective":"stat_played_s"}}],"color":"yellow"}
scoreboard players reset @s played
scoreboard players enable @s played