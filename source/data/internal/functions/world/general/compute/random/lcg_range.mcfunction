scoreboard players operation #MATH rand += #MATH seed
scoreboard players operation #MATH min = @s min
scoreboard players operation #MATH max = @s max
scoreboard players operation #MATH max -= #MATH min
scoreboard players operation #MATH rand %= #MATH max
scoreboard players operation #MATH rand += #MATH min
scoreboard players operation @s rand = #MATH rand

#tellraw @a[tag=account.debugging] [{"text":"GUID: "},{"score":{"name":"@s","objective":"entity_guid"}},{"text":", Result: "},{"score":{"name":"#MATH","objective":"rand"}},{"text":", Iteration: "},{"score":{"name":"@s","objective":"loop_iteration"}}]
scoreboard players reset #MATH rand