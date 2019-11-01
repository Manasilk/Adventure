scoreboard objectives add event_phaseid dummy {"translate":"dbc.smart_script.event_phaseid"}
scoreboard objectives add event_chance dummy {"translate":"dbc.smart_script.event_chance"}

scoreboard objectives add param1 dummy {"translate":"dbc.smart_script.param1"}
scoreboard objectives add param2 dummy {"translate":"dbc.smart_script.param2"}
scoreboard objectives add param3 dummy {"translate":"dbc.smart_script.param3"}
scoreboard objectives add param4 dummy {"translate":"dbc.smart_script.param4"}
scoreboard objectives add param5 dummy {"translate":"dbc.smart_script.param5"}

scoreboard objectives add target_x dummy {"translate":"dbc.smart_script.target_x"}
scoreboard objectives add target_y dummy {"translate":"dbc.smart_script.target_y"}
scoreboard objectives add target_z dummy {"translate":"dbc.smart_script.target_z"}
scoreboard objectives add target_o dummy {"translate":"dbc.smart_script.target_o"}
#EVENT_TYPE 
#SMART_EVENT_UPDATE_IC           :
#SMART_EVENT_UPDATE_OOC          :
#SMART_EVENT_UPDATE              :
#SMART_EVENT_DAMAGED             :
#SMART_EVENT_AGGRO               :
#SMART_EVENT_EVADE               :
#SMART_EVENT_RESET               :
#SMART_EVENT_IC_LOS              :
#SMART_EVENT_LOAD_SPELL          :
#SMART_EVENT_PREP_CAST           :
#SMART_EVENT_WAYPOINT_START      :
#SMART_EVENT_WAYPOINT_PAUSED     :
#SMART_EVENT_WAYPOINT_STOPPED    :
#SMART_EVENT_WAYPOINT_REACHED    :
#SMART_EVENT_JUST_SUMMONED       :
#SMART_EVENT_RANGE               :
#SMART_EVENT_FOLLOW_COMPLETED    :
#SMART_EVENT_REINFORCEMENT       :
#SMART_EVENT_SEARCH_SPAWN_BLOCK  :

#EVENT_ACTIONS
#SMART_ACTION_FAIL_QUEST         :
#SMART_ACTION_OFFER_QUEST        :
#SMART_ACTION_SET_REACT_STATE    :
#SMART_ACTION_CAST               :
#SMART_ACTION_SUMMON_CREATURE    :
#SMART_ACTION_SET_EVENT_PHASE    : smart_scripts.event_phaseid
#SMART_ACTION_INC_EVENT_PHASE    : param1 = increment; param2 = decrement;
#SMART_ACTION_EVADE              :
#SMART_ACTION_FOLLOW             :
#SMART_ACTION_CALL_KILLEDMONSTER :
#SMART_ACTION_CALL_AREAEXPLORED  :
#SMART_ACTION_KILL_UNIT          :
#SMART_ACTION_WP_START           :
#SMART_ACTION_WP_PAUSE           :
#SMART_ACTION_WP_STOP            :
#SMART_ACTION_WP_RESUME          :
#SMART_ACTION_MOVE_TO_POS        :
#SMART_ACTION_CALL_SCRIPT_RESET  :
#SMART_ACTION_FORCE_SPAWN        :
#SMART_ACTION_ALARM              :

#EVENT_TARGETS
#TARGET_NONE                     : no target
#TARGET_SELF                     : always the invoker
#TARGET_POSITION                 : target_x, target_y, target_z
#TARGET_PLAYER_NEAREST           : nearest players in LOS
#TARGET_PLAYER_FURTHEST          : furthest player in LOS
#TARGET_PLAYER_RANDOM            : random player in LOS
#TARGET_CREATURE_NEAREST         : nearest creature in LOS
#TARGET_CREATURE_FURTHEST        : furthest creature in LOS

#CAST_FLAGS
#SMARTCAST_INTERRUPT
#SMARTCAST_TRIGGERED