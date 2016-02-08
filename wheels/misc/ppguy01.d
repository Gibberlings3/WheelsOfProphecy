ADD_STATE_TRIGGER ppguy01 4 ~Global("DMWWGrove","GLOBAL",2)~
REPLACE_STATE_TRIGGER ppguy01 0 ~Global("MelissanYagaKillJob","GLOBAL",1)Global("DMWWGroveRevealed","GLOBAL",0)~

EXTEND_TOP ppguy01 4
IF ~~ THEN REPLY @3050 GOTO to_amkethran
END

APPEND ppguy01 

IF
~Global("DMWWGroveRevealed","GLOBAL",1)
 !Global("DMWWGrove","GLOBAL",2)~ 
THEN BEGIN before_grove
SAY #71063
IF ~~ THEN REPLY @3051 GOTO to_grove 
IF ~~ THEN REPLY @3050 GOTO to_amkethran
IF ~~ THEN REPLY #71064 GOTO 1
IF ~~ THEN REPLY #72477 DO ~DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN to_grove 
  SAY #71071 
  IF ~~ THEN DO ~LeaveAreaLUAPanic("dw#teth","",[794.1758],10)
ActionOverride(Player1,LeaveAreaLUA("dw#teth","",[794.1758],10))
ActionOverride(Player2,LeaveAreaLUA("dw#teth","",[851.1745],10))
ActionOverride(Player3,LeaveAreaLUA("dw#teth","",[811.1798],10))
ActionOverride(Player4,LeaveAreaLUA("dw#teth","",[865.1797],10))
ActionOverride(Player5,LeaveAreaLUA("dw#teth","",[812.1841],10))
ActionOverride(Player6,LeaveAreaLUA("dw#teth","",[876.1840],10))
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN to_amkethran
  SAY #71071 
  IF ~~ THEN DO ~LeaveAreaLUAPanic("AR5500","",[2006.1284],10)
ActionOverride(Player1,LeaveAreaLUA("AR5500","",[2006.1284],10))
ActionOverride(Player2,LeaveAreaLUA("AR5500","",[2050.1290],10))
ActionOverride(Player3,LeaveAreaLUA("AR5500","",[1986.1323],10))
ActionOverride(Player4,LeaveAreaLUA("AR5500","",[2056.1327],10))
ActionOverride(Player5,LeaveAreaLUA("AR5500","",[1980.1364],10))
ActionOverride(Player6,LeaveAreaLUA("AR5500","",[2068.1365],10))
DestroySelf()~ EXIT
END

END
