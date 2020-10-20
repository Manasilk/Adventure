scoreboard objectives add __setup dummy

execute store result score #world __setup run data get storage internal:world setup[].state
execute unless score #world __setup matches -1 run function internal:configuration/setup/run