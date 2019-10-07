function server:game/entity/creature/this.get_base_attributes
function server:game/entity/creature/this.initialize_nameplate
function server:game/entity/creature/this.get_spawn_position

tag @s remove _e.initialized_scaling
tag @s remove ENTITY_FLAG_IN_COMBAT

scoreboard players set @s spell_itr -1
scoreboard players reset @s spell_diff
scoreboard players reset @s spell_cast_t
scoreboard players reset @s cast_max_t