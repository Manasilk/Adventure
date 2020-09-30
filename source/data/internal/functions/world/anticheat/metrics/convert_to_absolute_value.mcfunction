#This function is used to convert any negative position value to positive:
scoreboard players operation @s[scores={_ac.pos_x0=..-1}] _ac.pos_x0 *= #const CNVT_OPP
scoreboard players operation @s[scores={_ac.pos_y0=..-1}] _ac.pos_y0 *= #const CNVT_OPP
scoreboard players operation @s[scores={_ac.pos_z0=..-1}] _ac.pos_z0 *= #const CNVT_OPP

scoreboard players operation @s[scores={_ac.pos_x1=..-1}] _ac.pos_x1 *= #const CNVT_OPP
scoreboard players operation @s[scores={_ac.pos_y1=..-1}] _ac.pos_y1 *= #const CNVT_OPP
scoreboard players operation @s[scores={_ac.pos_z1=..-1}] _ac.pos_z1 *= #const CNVT_OPP