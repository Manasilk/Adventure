scoreboard players add @s[scores={fatigue_level=0..59}] fatigue_level 1

execute if score @s fatigue_level matches 60 run function server:game/entity/player/reset_player_fatigue
scoreboard players remove @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE,scores={fatigue_level=0..59},advancements={server:internal/fatigue/biome_deep_ocean=false}] fatigue_level 6

scoreboard players set @s[scores={fatigue_level=..-1}] fatigue_level 0
tag @s[tag=ENTITY_FLAG_SWIMMING_FATIGUE,scores={fatigue_level=0}] remove ENTITY_FLAG_SWIMMING_FATIGUE
advancement revoke @s only server:internal/fatigue/biome_deep_ocean

title @s[scores={fatigue_level=0..5}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■■■■■■■■■■","color":"gold"},{"text":"","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=6..11}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■■■■■■■■■","color":"gold"},{"text":"■","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=12..17}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■■■■■■■■","color":"gold"},{"text":"■■","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=18..23}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■■■■■■■","color":"gold"},{"text":"■■■","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=24..29}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■■■■■■","color":"gold"},{"text":"■■■■","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=30..35}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■■■■■","color":"gold"},{"text":"■■■■■","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=36..41}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■■■■","color":"gold"},{"text":"■■■■■■","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=42..47}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■■■","color":"gold"},{"text":"■■■■■■■","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=48..53}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■■","color":"gold"},{"text":"■■■■■■■■","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=54..59}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"■","color":"gold"},{"text":"■■■■■■■■■","color":"dark_gray"},{"text":"]","color":"gold"}]}
title @s[scores={fatigue_level=60}] actionbar {"translate":"ui.fatigue_level","with":[{"text":"[","color":"gold"},{"text":"","color":"gold"},{"text":"■■■■■■■■■■","color":"dark_gray"},{"text":"]","color":"gold"}]}