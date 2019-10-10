function server:game/entity/creature/this.get_base_attributes
function server:game/entity/creature/this.initialize_nameplate
function server:game/entity/creature/this.get_spawn_position

tag @s remove _e.initialized_scaling
tag @s remove ENTITY_FLAG_IN_COMBAT

scoreboard players set @s spell_itr -1
scoreboard players reset @s spell_diff
scoreboard players reset @s spell_cast_t
scoreboard players reset @s cast_max_t

tag @s remove SMARTCAST_INTERRUPT
tag @s remove SMARTCAST_TRIGGERED
tag @s remove TARGET_NONE
tag @s remove TARGET_SELF
tag @s remove TARGET_POSITION
tag @s remove TARGET_PLAYER_NEAREST
tag @s remove TARGET_PLAYER_FURTHEST
tag @s remove TARGET_PLAYER_RANDOM
tag @s remove TARGET_CREATURE_NEAREST
tag @s remove TARGET_CREATURE_FURTHEST
tag @s remove SMART_EVENT_CAST
tag @s remove SMART_EVENT_RESET
tag @s remove SMART_EVENT_LOAD_SPELL
tag @s remove SMART_EVENT_PREP_CAST