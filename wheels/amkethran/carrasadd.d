ADD_STATE_TRIGGER ~amcarras~ 11 ~OR(2)!Dead("balth")Global("DW#carras","LOCALS",1) OR(2)!Global("BalthazarFights","GLOBAL",1)Global("DW#carras","LOCALS",1)~

ADD_TRANS_TRIGGER ~amcarras~ 13 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
EXTEND_BOTTOM amcarras 13 
IF ~OR(2)
	Dead("balth")
	Global("BalthazarFights","GLOBAL",1)~
THEN DO ~StartStore("amsmug02",LastTalkedToBy())~ EXIT
END

ADD_TRANS_TRIGGER amcarras 19 ~!Global("DW#bribe","LOCALS",1)~

EXTEND_BOTTOM amcarras 19 
IF ~Global("DW#bribe","LOCALS",1)~ THEN GOTO toldall
END

EXTEND_BOTTOM amcarras 21 22
IF ~~ THEN REPLY @0 GOTO offeredbribe
END

EXTEND_BOTTOM amcarras 7 16 
IF ~!Global("DW#bribe","LOCALS",1)~ THEN REPLY @1 DO ~SetGlobal("DMWWCarrasFaheed","GLOBAL",1)SetGlobal("DW#bribe","LOCALS",1)~ GOTO friendlywayin
END

APPEND ~amcarras~

IF WEIGHT #3 
~Global("SmugglerPlot","GLOBAL",0)
OR(2)
	Dead("balth")
	Global("BalthazarFights","GLOBAL",1)~ THEN BEGIN carras_friendly // from:
  SAY #67027 
= @2
  IF ~~ THEN DO ~SetGlobal("DW#carrasfriendly","LOCALS",1)~ REPLY #67028  GOTO 13
  IF ~Global("SmugglerTalk","GLOBAL",0)~ THEN DO ~SetGlobal("DW#carras","LOCALS",1)~ REPLY #67030  GOTO 12
  IF ~!Dead("dw#melis")~ THEN DO ~SetGlobal("DW#carrasfriendly","LOCALS",1)~ REPLY #67032  GOTO 24
  IF ~Global("SmugglerTalk","GLOBAL",0)~ THEN DO ~SetGlobal("DW#carrasfriendly","LOCALS",1)~ REPLY #67036  GOTO 12
  IF ~~ THEN DO ~SetGlobal("DW#carrasfriendly","LOCALS",1)~ REPLY #67039  GOTO 14
END

IF WEIGHT #0 
~Global("DMWWSmugglerCave","GLOBAL",2)
OR(2)
	Dead("balth")
	Global("BalthazarFights","GLOBAL",1)~ THEN BEGIN carras_friendly // from:
  SAY @3
  IF ~~ THEN DO ~SetGlobal("DW#carrasfriendly","LOCALS",1)~ REPLY #67028  GOTO 13
  IF ~Global("SmugglerTalk","GLOBAL",0)~ THEN DO ~SetGlobal("DW#carras","LOCALS",1)~ REPLY #67030  GOTO 12
  IF ~!Dead("dw#melis")~ THEN DO ~SetGlobal("DW#carrasfriendly","LOCALS",1)~ REPLY #67032  GOTO 24
  IF ~Global("SmugglerTalk","GLOBAL",0)~ THEN DO ~SetGlobal("DW#carrasfriendly","LOCALS",1)~ REPLY #67036  GOTO 12
  IF ~~ THEN DO ~SetGlobal("DW#carrasfriendly","LOCALS",1)~ REPLY #67039  GOTO 14
END

IF ~~ THEN BEGIN offeredbribe
SAY @4
IF ~PartyGoldGT(9999)~ THEN REPLY @5 DO ~SetGlobal("DMWWCarrasFaheed","GLOBAL",1)SetGlobal("DW#bribe","LOCALS",1)TakePartyGold(10000)~ GOTO paidbribe
IF ~~ THEN REPLY @6 GOTO wontpay
IF ~~ THEN REPLY @7 GOTO nothreat
END

IF ~~ THEN BEGIN paidbribe
SAY @8
=
@9
=
@10
=
@11
  IF ~~ THEN REPLY #67165 /* ~Yes, I'd like to see your merchandise.~ */ GOTO 13
  IF ~~ THEN REPLY #67166 /* ~No, I'll be going now.~ */ GOTO 14
  IF ~~ THEN REPLY #67167 /* ~What do you know about Melissan?~ */ GOTO 24
END

IF ~~ THEN BEGIN wontpay
SAY @12
  IF ~~ THEN REPLY #67165 /* ~Yes, I'd like to see your merchandise.~ */ GOTO 13
  IF ~~ THEN REPLY #67166 /* ~No, I'll be going now.~ */ GOTO 14
  IF ~~ THEN REPLY #67167 /* ~What do you know about Melissan?~ */ GOTO 24
END

IF ~~ THEN BEGIN nothreat
SAY @13
IF ~PartyGoldGT(9999)~ THEN REPLY @14 DO ~SetGlobal("DMWWCarrasFaheed","GLOBAL",1)SetGlobal("DW#bribe","LOCALS",1)TakePartyGold(10000)~ GOTO paidbribe
IF ~PartyGoldGT(9999)~ THEN REPLY @15 DO ~SetGlobal("DMWWCarrasFaheed","GLOBAL",1)SetGlobal("DW#bribe","LOCALS",1)TakePartyGold(10000)~ GOTO paidbribe
IF ~~ THEN REPLY @16 GOTO wontpay
IF ~~ THEN REPLY @17 GOTO 10
END

IF ~~ THEN BEGIN toldall
SAY @18
  IF ~~ THEN REPLY #67165 /* ~Yes, I'd like to see your merchandise.~ */ GOTO 13
  IF ~~ THEN REPLY #67166 /* ~No, I'll be going now.~ */ GOTO 14
  IF ~~ THEN REPLY #67167 /* ~What do you know about Melissan?~ */ GOTO 24
END

IF ~~ THEN BEGIN friendlywayin
SAY @19
=
@20
=
@9
=
@10
=
@21
  IF ~~ THEN REPLY #67062 /* ~Yes, I would like to see your wares.~ */ DO ~StartStore("amsmug02",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY #67063 /* ~No thanks.  I'll be going now.~ */ GOTO 14
END

END
