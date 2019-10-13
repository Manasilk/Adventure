### VANILLA DATAPACK ###
# disabled by default
datapack disable vanilla
### GAMERULES CONFIG ###
# SUBJECT TO CHANGE AT RC/RELEASE
# @PLAYER
gamerule keepInventory true
gamerule naturalRegeneration true
gamerule doLimitedCrafting true
#
# @CHAT
gamerule showDeathMessages false
gamerule announceAdvancements false
#
# @SPAWN
gamerule doMobSpawning false
execute store result score #dbc.server cfg.do_spawn run gamerule doMobSpawning
#respawn timers in seconds
scoreboard players set #dbc.server cfg.quest_t 30
scoreboard players set #dbc.server cfg.normal_t 30
scoreboard players set #dbc.server cfg.elite_t 300
scoreboard players set #dbc.server cfg.boss_t 600
#
# @PICKUP
gamerule doMobLoot true
#
# @LOOT
gamerule doEntityDrops true
gamerule doTileDrops true
#
# @ENVIRONMENT
gamerule disableRaids true
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doFireTick true
gamerule mobGriefing false
gamerule maxEntityCramming 0
gamerule randomTickSpeed 3
#
# @WORLDSPAWN
gamerule spawnRadius 0
#
# @SERVER
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule maxCommandChainLength 65536
gamerule spectatorsGenerateChunks true
gamerule disableElytraMovementCheck true
function server:game/miscellaneous/shared_def
### ANTICHEAT CONFIG ###
#
# @ANTICHEAT
#defines the allowed gamemode for players
#SURVIVAL                         = 1,
#ADVENTURE                        = 2,
#CREATIVE                         = 4,
#SPECTATOR                        = 8
scoreboard players set #dbc.fairbox _FB.Gamemode 1

#controls if anticheat should take any actions
#0 = disabled,
#1 = enabled
scoreboard players set #dbc.fairbox _FB.Actions 1

#re-sync timers
execute if score #dbc.core _dbc.setup = #bool true run function server:game/time/synchronize_time
scoreboard players add #dbc.core build_revision 1
### TRIMMING CONFIG ###
# Deletes and recreates objectives to reduce scoreboard filesize
# cfg.do_trim = 1, enabled
# cfg.do_trim = 0, disabled
scoreboard players set #dbc.server cfg.do_trim 1