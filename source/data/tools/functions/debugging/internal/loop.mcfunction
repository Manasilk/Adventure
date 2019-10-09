scoreboard players add #DEBUG cmd_executed 1
function #tools:loop
execute store result score #DEBUG border_size run worldborder get
execute if score #DEBUG border_size > #DEBUG border_target run function tools:debugging/internal/loop