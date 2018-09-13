BEGIN ~dw#melis~
IF ~HP(Myself,1)~ THEN BEGIN ondeath
SAY @0 
IF ~~ THEN DO
~StartCutSceneMode()
StartCutScene("dw#balc4")~ EXIT
END

IF ~Dead("balth")Dead("sendai")Dead("abazigal")~ THEN BEGIN escape
SAY @1
IF ~~ THEN REPLY @2 GOTO naive
IF ~~ THEN REPLY @3 GOTO accuse
IF ~~ THEN REPLY @4 GOTO nofight
IF ~~ THEN REPLY @5 GOTO nofight
IF ~~ THEN REPLY @6 GOTO nodeal
END

IF ~~ THEN BEGIN naive
SAY @7 IF ~~ THEN DO ~ForceSpell(Myself,SWOOSH_GONE)~ EXIT 
END

IF ~~ THEN BEGIN accuse
SAY @8 IF ~~ THEN DO ~ForceSpell(Myself,SWOOSH_GONE)~ EXIT 
END

IF ~~ THEN BEGIN nofight
SAY @9 IF ~~ THEN DO ~ForceSpell(Myself,SWOOSH_GONE)~ EXIT 
END

IF ~~ THEN BEGIN nodeal
SAY @10 IF ~~ THEN DO ~ForceSpell(Myself,SWOOSH_GONE)~ EXIT 
END


