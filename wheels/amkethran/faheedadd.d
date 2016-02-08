REPLACE_STATE_TRIGGER amfaheed 2
~NumTimesTalkedTo(0)
OR(4)
Global("ZakeeFaheed","GLOBAL",1)
Global("SaemonFaheed","GLOBAL",1)
Global("DMWWCarrasFaheed","GLOBAL",1)
Global("DMWWRumorFaheed","GLOBAL",1)
!Dead("balth")
!Global("BalthazarFights","GLOBAL",1)
!Global("DMWWGotFaheedKey","GLOBAL",1)~

REPLACE_STATE_TRIGGER amfaheed 11
~!NumTimesTalkedTo(0)
OR(4)
Global("ZakeeFaheed","GLOBAL",1)
Global("SaemonFaheed","GLOBAL",1)
Global("DMWWCarrasFaheed","GLOBAL",1)
Global("DMWWRumorFaheed","GLOBAL",1)
!Dead("balth")
!Global("BalthazarFights","GLOBAL",1)
!Global("DMWWGotFaheedKey","GLOBAL",1)~

ADD_STATE_TRIGGER amfaheed 0 ~!Global("DMWWCarrasFaheed","GLOBAL",1)!Global("DMWWRumorFaheed","GLOBAL",1)~
ADD_STATE_TRIGGER amfaheed 1 ~!Global("DMWWCarrasFaheed","GLOBAL",1)!Global("DMWWRumorFaheed","GLOBAL",1)~

ADD_TRANS_TRIGGER amfaheed 2 ~Global("SaemonFaheed","GLOBAL",1)~
ADD_TRANS_TRIGGER amfaheed 11 ~Global("SaemonFaheed","GLOBAL",1)~
ADD_TRANS_TRIGGER amfaheed 8 ~Global("Enclave","GLOBAL",2)~

REPLACE_TRANS_ACTION amfaheed BEGIN 10 END BEGIN 0 END ~ActionOverride("ammajira",EscapeArea())EscapeArea()~ ~SetGlobal("DMWWGotFaheedKey","GLOBAL",1)~

EXTEND_BOTTOM amfaheed 2
IF ~!Global("SaemonFaheed","GLOBAL",1)~ THEN REPLY @0 GOTO whythink
IF ~!Global("SaemonFaheed","GLOBAL",1)~ THEN REPLY @1 GOTO whythink
END

EXTEND_BOTTOM amfaheed 8
IF  ~!Global("Enclave","GLOBAL",2)~ THEN REPLY #71890  GOTO herekey
IF ~!Global("Enclave","GLOBAL",2)~ THEN REPLY #71891  GOTO herekey
IF ~!Global("Enclave","GLOBAL",2)~ THEN REPLY #71892  GOTO 7
END

EXTEND_BOTTOM amfaheed 11
IF ~!Global("SaemonFaheed","GLOBAL",1)~ THEN REPLY @2 GOTO whythink
IF ~!Global("SaemonFaheed","GLOBAL",1)~ THEN REPLY @3 GOTO whythink
END

EXTEND_BOTTOM amfaheed 5 6
IF ~~ THEN REPLY @4 GOTO 8
END


APPEND amfaheed

IF ~Global("BalthazarFights","GLOBAL",1)~ THEN BEGIN faheedhappy
SAY @5
IF ~~ THEN EXIT END

IF ~!Global("BalthazarFights","GLOBAL",1)!Dead("balth")Global("DMWWGotFaheedKey","GLOBAL",1)~ THEN BEGIN faheedimpatient
SAY @14
IF ~~ THEN EXIT END

IF ~~ THEN BEGIN whythink
SAY @6
IF ~Global("ZakeeFaheed","GLOBAL",1)~ THEN REPLY @7 GOTO tellkey
IF ~Global("DMWWCarrasFaheed","GLOBAL",1)~ THEN REPLY @8 GOTO tellkey
IF ~Global("DMWWRumorFaheed","GLOBAL",1)~ THEN REPLY @9 GOTO tellkey
IF ~~ THEN REPLY #71878 /* ~That doesn't matter.  Do you have it or not?~ */ GOTO tellkey
END

IF ~~ THEN BEGIN tellkey

SAY @10
IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN herekey
SAY @11
IF ~~ THEN DO ~GiveItemCreate("plot17b",LastTalkedToBy,0,0,0)SetGlobal("DMWWGotFaheedKey","GLOBAL",1)~ EXTERN ammajira majiracomment
END

IF ~~ THEN BEGIN postmajira
SAY @13
IF ~~ THEN EXIT END

END

ADD_STATE_TRIGGER ammajira 0 ~!Global("BalthazarFights","GLOBAL",1)!Global("DMWWGotFaheedKey","GLOBAL",1)~
ADD_STATE_TRIGGER ammajira 1 ~!Global("BalthazarFights","GLOBAL",1)!Global("DMWWGotFaheedKey","GLOBAL",1)~
ADD_STATE_TRIGGER ammajira 2 ~!Global("BalthazarFights","GLOBAL",1)!Global("DMWWGotFaheedKey","GLOBAL",1)~
REPLACE_TRANS_ACTION ammajira BEGIN 3 END BEGIN 0 END ~EscapeArea()~ ~~

APPEND ammajira

IF ~Global("BalthazarFights","GLOBAL",1)~ THEN BEGIN majirahappy
SAY @15
IF ~~ THEN EXIT END

IF ~!Global("BalthazarFights","GLOBAL",1)!Dead("balth")Global("DMWWGotFaheedKey","GLOBAL",1)~ THEN BEGIN majiraimpatient
SAY @16
IF ~~ THEN EXIT END

IF ~~ THEN BEGIN majiracomment
SAY @12
IF ~~ THEN  EXTERN amfaheed postmajira
END

END