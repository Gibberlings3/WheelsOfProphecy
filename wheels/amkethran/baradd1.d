ADD_TRANS_TRIGGER ambar01 14 ~!Dead("abazigal")!Dead("sendai")~

ADD_TRANS_TRIGGER ambar01 26 ~Dead("abazigal")Dead("sendai")~

ADD_TRANS_TRIGGER ambar01 18 ~!Global("barinterjections","LOCALS",1)~

ADD_TRANS_ACTION ambar01 BEGIN 19 END BEGIN END ~SetGlobal("barinterjections","LOCALS",1)~

ADD_TRANS_ACTION ambar01 BEGIN 10 END BEGIN END ~SetGlobal("DMWWBarBalBhaal","GLOBAL",1)~

EXTEND_BOTTOM ambar01 14 
IF ~OR(2)Dead("abazigal")Dead("sendai")!Dead("amfaheed")~ THEN REPLY #67086 GOTO 22
IF ~OR(2)Dead("abazigal")Dead("sendai")Dead("amfaheed")~ THEN REPLY #67086 GOTO 25
END

EXTEND_BOTTOM ambar01 26 
IF ~OR(2)!Dead("abazigal")!Dead("sendai")~ THEN GOTO 19
END

EXTEND_BOTTOM ambar01 18
IF ~Global("barinterjections","LOCALS",1)~ THEN GOTO 19
END

EXTEND_BOTTOM ambar01 2
IF ~Global("DMWWMonkRope","GLOBAL",1)~ THEN REPLY @3060 GOTO barmanrope
END

EXTEND_BOTTOM ambar01 40
IF ~Global("DMWWMonkRope","GLOBAL",1)~ THEN REPLY @3060 GOTO barmanrope2
END

APPEND ambar01

IF ~~ THEN BEGIN barmanrope
SAY @3063 = @3064 = @3062
IF ~~ THEN DO ~GiveItemCreate("bazplo05",Player1,0,0,0) SetGlobal("DMWWMonkRope","GLOBAL",2)~ EXIT END

IF ~~ THEN BEGIN barmanrope2
SAY @3063 = @3061 = @3062
IF ~~ THEN DO ~GiveItemCreate("bazplo05",Player1,0,0,0) SetGlobal("DMWWMonkRope","GLOBAL",2)~ EXIT END


IF WEIGHT #-20 
~Global("BalthazarFights","GLOBAL",1)~
THEN BEGIN  barlikes
SAY @3065
IF ~~ THEN REPLY #73963 /* ~Yes, let me see what you have.~ */ DO ~StartStore("dw#ambar",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY #73964 /* ~No, I'll be on my way.~ */ GOTO barthanks
  IF ~  Global("DMWWMonkRope","GLOBAL",1)
~ THEN REPLY @3060 GOTO barmanrope
END


IF ~~ THEN BEGIN barthanks
  SAY @3066
  IF ~~ THEN EXIT
END



END