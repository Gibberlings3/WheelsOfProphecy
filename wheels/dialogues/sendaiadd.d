ADD_TRANS_TRIGGER ~sendai~ 13  ~False()~

ADD_STATE_TRIGGER ~sendai~ 2 ~Global("SendaiCutScene1","GLOBAL",1)OR(2)!Dead("abazigal")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER ~sendai~ 13 ~!Global("SendaiCutScene1","GLOBAL",1)~

EXTEND_BOTTOM sendai 13
IF ~Global("HadBhaal25Dream2","GLOBAL",0)~ THEN GOTO sendaicurse
IF ~!Global("HadBhaal25Dream2","GLOBAL",0)~ THEN REPLY @0 GOTO 14
IF ~!Global("HadBhaal25Dream2","GLOBAL",0)~ THEN REPLY @1 GOTO 14
IF ~!Global("HadBhaal25Dream2","GLOBAL",0)~ THEN REPLY @2 GOTO 14
IF ~!Global("HadBhaal25Dream2","GLOBAL",0)~ THEN REPLY @3 GOTO negotiate
IF ~Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @4 GOTO bhaalstillthreat
IF ~Dead("abazigal")Dead("balth")~ THEN REPLY @5 GOTO 14
IF ~Dead("abazigal")Dead("balth")!Dead("dw#melis")~ THEN REPLY @6 GOTO wheremelissan
END


APPEND sendai

IF WEIGHT #-10 ~Global("SendaiCutScene1","GLOBAL",1)Dead("abazigal")Global("BalthazarFights","GLOBAL",1)~ THEN BEGIN sendaitomel_balthlives
SAY @7
IF ~~ THEN EXTERN dw#cutme reassure_sendai
END

IF WEIGHT #-9 ~Global("SendaiCutScene1","GLOBAL",1)Dead("abazigal")Dead("balth")~ THEN BEGIN sendaitomel_balthdead
SAY @8
IF ~~ THEN EXTERN dw#cutme reassure_sendai
END

IF ~~ THEN BEGIN splutter_at_mel
SAY @9
IF ~~ THEN EXTERN dw#cutme betray_sendai_2
END

IF ~~ THEN BEGIN splutter_at_mel_2
SAY @10
IF ~~ THEN EXTERN dw#cutme betray_sendai_3
END


IF ~~ THEN BEGIN sendaicurse
SAY @11
IF ~~ THEN REPLY @12 SOLVED_JOURNAL @1003  GOTO yesbalth
IF ~~ THEN REPLY @13  SOLVED_JOURNAL @1003 GOTO nobalth
IF ~~ THEN REPLY @14 GOTO 14
IF ~!Global("HadBhaal25Dream2","GLOBAL",0)~ THEN REPLY @15 GOTO negotiate
IF ~~ THEN REPLY @16 GOTO 14
END

IF ~~ THEN BEGIN yesbalth
SAY @17
IF ~~ THEN REPLY @18 DO ~SetGlobal("DMWWSendRattedBalth","GLOBAL",1)~ GOTO balth14link
IF ~~ THEN REPLY @19 DO ~SetGlobal("DMWWSendRattedBalth","GLOBAL",1)~ GOTO balth14link2
IF ~!Global("DMWWforeclosedalliance","GLOBAL",1)~ THEN REPLY @20 DO ~SetGlobal("DMWWSendRattedBalth","GLOBAL",1)~ GOTO negotiate
END

IF ~~ THEN BEGIN nobalth
SAY @21
=
@22
IF ~~ THEN REPLY @18 DO ~SetGlobal("DMWWSendRattedBalth","GLOBAL",1)~ GOTO balth14link
IF ~~ THEN REPLY @19 DO ~SetGlobal("DMWWSendRattedBalth","GLOBAL",1)~ GOTO balth14link2
IF ~!Global("DMWWforeclosedalliance","GLOBAL",1)~ THEN REPLY @20 DO ~SetGlobal("DMWWSendRattedBalth","GLOBAL",1)~ GOTO negotiate
END

IF ~~ THEN BEGIN balth14link
SAY @23
IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN balth14link2
SAY @24
IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN negotiate
SAY @25
IF ~Global("HadBhaal25Dream2","GLOBAL",0)~ THEN REPLY @26 GOTO prophecy
IF ~Global("HadBhaal25Dream2","GLOBAL",0)Global("DMWWSendRattedBalth","GLOBAL",0)~ THEN REPLY @27  SOLVED_JOURNAL @1003 GOTO nobalth
IF ~Global("HadBhaal25Dream2","GLOBAL",0)Global("DMWWSendRattedBalth","GLOBAL",0)~ THEN REPLY @28  SOLVED_JOURNAL @1003 GOTO yesbalth
IF ~!Global("HadBhaal25Dream2","GLOBAL",0)~ THEN REPLY @29 GOTO balth14link
IF ~~ THEN REPLY @30 GOTO 14
END

IF ~~ THEN BEGIN prophecy
SAY @31
IF ~!Global("DMWWSendRattedBalth","GLOBAL",1)~ THEN REPLY @32  SOLVED_JOURNAL @1003 GOTO nobalth
IF ~!Global("DMWWSendRattedBalth","GLOBAL",1)~ THEN REPLY @33  SOLVED_JOURNAL @1003 GOTO yesbalth
IF ~~ THEN REPLY @34 GOTO 14
IF ~~ THEN REPLY @35 

GOTO balth14link
END

IF ~~ THEN BEGIN bhaalstillthreat 
SAY @36
IF ~~ THEN REPLY @35 

GOTO balth14link
IF ~~ THEN REPLY @2 GOTO 14
END


IF ~~ THEN BEGIN wheremelissan
SAY @37
IF ~~ THEN REPLY @38 GOTO balth14link
IF ~~ THEN REPLY @39 GOTO 14
END

IF ~~ THEN BEGIN balthdead
SAY #67562 
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("OpenPortal","AR6108",1)
StartCutSceneMode()
//DestroyItem("BHAALHP1")
Wait(1)
AddXP2DA("SENDAI")
EraseJournalEntry(67464)
EraseJournalEntry(67465)
StartCutScene("dw#melbd")
Kill(Myself)~
SOLVED_JOURNAL @1010
EXIT
END

IF ~~ THEN BEGIN bothdead
SAY @40
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("OpenPortal","AR6108",1)
StartCutSceneMode()
Wait(1)
AddXP2DA("SENDAI")
EraseJournalEntry(67464)
EraseJournalEntry(67465)
EraseJournalEntry(66357)
Kill(Myself)
EndCutSceneMode()~
EXIT
END


IF ~~ THEN BEGIN meldead
SAY @41
  IF ~Dead("balth")~ THEN DO ~ClearAllActions()
SetGlobal("OpenPortal","AR6108",1)
StartCutSceneMode()
Wait(1)
AddXP2DA("SENDAI")
Kill(Myself)
EndCutSceneMode()~
EXIT
IF ~!Dead("balth")~ THEN DO ~ClearAllActions()
SetGlobal("OpenPortal","AR6108",1)
StartCutSceneMode()
Wait(1)
AddXP2DA("SENDAI")
Kill(Myself)
EndCutSceneMode()~
UNSOLVED_JOURNAL @1013
EXIT
END




END

APPEND dw#cutme
IF ~~ THEN BEGIN reassure_sendai
SAY @42
IF ~~ THEN DO
~StartCutSceneMode()
StartCutScene("dw#senc2")~
EXIT END

IF ~Global("SendaiCutScene2","GLOBAL",3)~ THEN BEGIN betray_sendai
SAY @43
IF ~~ THEN EXTERN sendai splutter_at_mel
END

IF ~~ THEN BEGIN betray_sendai_2
SAY @44
IF ~~ THEN EXTERN sendai splutter_at_mel_2
END

IF ~~ THEN BEGIN betray_sendai_3
SAY @45
IF ~~ THEN DO ~StartCutSceneMode()StartCutScene("dw#senc4")~ EXIT
END

END



EXTEND_BOTTOM sendai 15
IF ~Dead("balth")!Dead("abazigal")!Dead("dw#melis")~ THEN GOTO balthdead 
IF ~Dead("dw#melis")~ THEN GOTO meldead
IF ~Dead("abazigal")Dead("balth")!Dead("dw#melis")~ THEN GOTO bothdead
END

REPLACE_SAY sendai 16 @46

ADD_TRANS_TRIGGER senpri 1
~OR(3)
	!Dead("balth")
	!Dead("abazigal")
	Dead("dw#melis")
 OR(3)
	
	Global("BalthazarFights","GLOBAL",0)
	!Dead("abazigal")
	Dead("dw#melis")~

EXTEND_BOTTOM senpri 1
IF ~Dead("abazigal")!Dead("dw#melis")OR(2)Dead("balth")Global("BalthazarFights","GLOBAL",1)~ 
THEN DO
~StartCutSceneMode() StartCutScene("dw#senc3")~ EXIT
END


