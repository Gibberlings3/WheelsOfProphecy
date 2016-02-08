APPEND solar

IF ~~ THEN BEGIN balth_alliance
SAY @0
IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN know_something
SAY @1
= @2
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut235b")
~ EXIT
END

IF WEIGHT #-10 ~Global("BalthazarFights","GLOBAL",1)Global("TalkedToSolar","GLOBAL",5)~ THEN BEGIN newbalthparley
SAY @3
=
@4
IF ~~ THEN GOTO learnedsecrets
END

IF ~~ THEN BEGIN learnedsecrets
SAY @5
IF ~~ THEN REPLY @6 GOTO nobhaalback
IF ~!Dead("dw#melis")~ THEN REPLY @7 DO ~SetGlobal("TalkedToSolar","GLOBAL",6)~ GOTO 60
IF ~Dead("dw#melis")~ THEN REPLY @8 DO ~SetGlobal("TalkedToSolar","GLOBAL",6)~ GOTO 60
IF ~~ THEN REPLY #67568  DO ~SetGlobal("TalkedToSolar","GLOBAL",6)~ GOTO nobhaalback
  IF ~~ THEN REPLY #67569  DO ~SetGlobal("TalkedToSolar","GLOBAL",6)~ GOTO nobhaalback
END

IF ~~ THEN BEGIN nobhaalback
SAY @9
=
@10
=
@11
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut243b")
~ EXIT
END


END

APPEND yaga02

IF ~~ THEN BEGIN killed_abaz
SAY @12
IF ~Dead("balth")~ THEN GOTO killed_balth
IF ~!Dead("balth")~ THEN GOTO not_killed_balth
END

IF ~~ THEN BEGIN killed_send
SAY @13
IF ~Dead("balth")~ THEN GOTO killed_balth
IF ~!Dead("balth")~ THEN GOTO not_killed_balth
END

IF ~~ THEN BEGIN killed_balth
SAY @14
IF ~~ THEN GOTO ~howmuchessence~
END

IF ~~ THEN BEGIN not_killed_balth
SAY @15
IF ~~ THEN GOTO ~howmuchessence~
END

IF ~~ THEN BEGIN howmuchessence
SAY @16
=
@17
IF ~~ THEN REPLY @18 GOTO yesher
END

IF ~~ THEN BEGIN yesher
SAY @19
IF ~!Dead("dw#melis")!Dead("abazigal")~ THEN REPLY @20 GOTO hahmaybe
IF ~!Dead("dw#melis")!Dead("sendai")~ THEN REPLY @21 GOTO hahmaybe
IF ~~ THEN REPLY @22 GOTO hahmaybe
IF ~Dead("dw#melis")~ THEN REPLY @23 GOTO hahmaybe 
END

IF ~~ THEN BEGIN hahmaybe
SAY @24
IF ~~ THEN GOTO heisstirring
END

IF ~~ THEN BEGIN heisstirring
SAY @25
IF ~~ THEN EXTERN solar 57
END

END

ADD_TRANS_TRIGGER solar 50 ~!Global("BalthazarFights","GLOBAL",1)~

EXTEND_BOTTOM solar 50 
IF ~Global("BalthazarFights","GLOBAL",1)~ THEN GOTO balth_alliance
END

ADD_TRANS_TRIGGER solar 56 ~False()~

EXTEND_BOTTOM solar 56
IF ~~ THEN REPLY @26 EXTERN yaga02 7
IF ~~ THEN REPLY @27 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",-1)~ EXTERN yaga02 7
IF ~~ THEN REPLY @28 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",1)~ EXTERN yaga02 7
IF ~~ THEN REPLY @29 EXTERN yaga02 7
IF ~~ THEN REPLY @30 EXTERN yaga02 7
END

ADD_TRANS_TRIGGER yaga02 7 ~Dead("sendai")Dead("abazigal")~ 

EXTEND_BOTTOM yaga02 7
IF ~Dead("abazigal")!Dead("sendai")~ THEN GOTO killed_abaz
IF ~!Dead("abazigal")Dead("sendai")~ THEN GOTO killed_send
END


EXTEND_TOP solar 57
IF ~!Dead("dw#melis")!Dead("sendai")Dead("abazigal")~ THEN REPLY @31  DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",1)~ GOTO 58
IF ~!Dead("dw#melis")!Dead("sendai")Dead("abazigal")~ THEN REPLY @32 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",-2)~ GOTO 58
IF ~!Dead("dw#melis")!Dead("sendai")Dead("abazigal")~ THEN REPLY @33 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",2)~ GOTO 58
IF ~Dead("dw#melis")!Dead("sendai")Dead("abazigal")~ THEN REPLY @34  DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",1)~ GOTO 58
IF ~Dead("dw#melis")!Dead("sendai")Dead("abazigal")~ THEN REPLY @35 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",-2)~ GOTO 58
IF ~Dead("dw#melis")!Dead("sendai")Dead("abazigal")~ THEN REPLY @36 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",2)~ GOTO 58
IF ~!Dead("dw#melis")Dead("sendai")!Dead("abazigal")~ THEN REPLY @37  DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",1)~ GOTO 58
IF ~!Dead("dw#melis")Dead("sendai")!Dead("abazigal")~ THEN REPLY @38 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",-2)~ GOTO 58
IF ~!Dead("dw#melis")Dead("sendai")!Dead("abazigal")~ THEN REPLY @39 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",2)~ GOTO 58
IF ~Dead("dw#melis")Dead("sendai")!Dead("abazigal")~ THEN REPLY @40  DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",1)~ GOTO 58
IF ~Dead("dw#melis")Dead("sendai")!Dead("abazigal")~ THEN REPLY @41 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",-2)~ GOTO 58
IF ~Dead("dw#melis")Dead("sendai")!Dead("abazigal")~ THEN REPLY @42 DO ~IncrementGlobal("Bhaal25Dream3","GLOBAL",2)~ GOTO 58
END

ADD_TRANS_TRIGGER solar 59 ~False()~

EXTEND_BOTTOM solar 59
IF ~~ THEN GOTO learnedsecrets
END

ADD_TRANS_TRIGGER solar 50 ~False()~

EXTEND_BOTTOM solar 50
IF ~~ THEN GOTO know_something
END


