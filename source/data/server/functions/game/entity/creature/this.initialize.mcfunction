function server:game/entity/creature/this.initialize_default_data
function server:game/entity/creature/this.initialize_rank
function server:game/entity/creature/this.initialize_attributes
function server:game/entity/creature/this.initialize_flags
function server:game/entity/creature/this.initialize_react_state
function server:game/entity/creature/this.initialize_spawn_position
function server:game/entity/creature/this.initialize_script
execute if entity @s[tag=ENTITY_FLAG_SPECIALINFO] run function server:game/entity/creature/this.initialize_nameplate

tag @s add _e.initialized_entry