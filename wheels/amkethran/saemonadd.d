ADD_TRANS_TRIGGER ~amsaemon~ 21 ~Global("enclave","GLOBAL",2)~

EXTEND_BOTTOM ~amsaemon~ 21 
IF ~!Global("enclave","GLOBAL",2)~ THEN GOTO saemon_enclave1
END

EXTEND_BOTTOM ~amsaemon~  26
IF ~Global("DMWWBalthFirst","GLOBAL",1)~ THEN REPLY #71821 GOTO nosecondway2
IF ~Global("DMWWBalthFirst","GLOBAL",1)~ THEN REPLY #71822 GOTO nosecondway
END

EXTEND_BOTTOM amsaemon 27
IF ~Global("DMWWBalthFirst","GLOBAL",1)~ THEN REPLY #71824 GOTO nosecondway2
IF ~Global("DMWWBalthFirst","GLOBAL",1)~ THEN REPLY #71825 GOTO nosecondway
END


APPEND ~amsaemon~ 

IF ~~ THEN BEGIN saemon_enclave1
SAY @0 
  IF ~~ THEN REPLY #71810  GOTO 25
  IF ~~ THEN REPLY #71811  GOTO 23
  IF ~~ THEN REPLY #71812  GOTO 23
  IF ~~ THEN REPLY @1 GOTO notyet
  IF ~~ THEN REPLY @2 GOTO notyet
END

IF ~~ THEN BEGIN notyet
SAY @3
IF ~~ THEN DO ~SetGlobal("DMWWSaemonHoldingPattern","GLOBAL",1)~ EXIT
END

IF WEIGHT #-10 ~Global("DMWWSaemonHoldingPattern","GLOBAL",1)~ THEN BEGIN saemon_again
SAY @4
  IF ~~ THEN REPLY #71810  GOTO 25
  IF ~~ THEN REPLY #71811  GOTO 23
  IF ~~ THEN REPLY #71812  GOTO 23
  IF ~~ THEN REPLY @1 GOTO notyet
  IF ~~ THEN REPLY @2 GOTO notyet
END

IF ~~ THEN BEGIN nosecondway
SAY @5
  IF ~~ THEN REPLY #71836 /* ~You've made your point.  We'll do the disguise, as you suggested.~ */ GOTO 32
  IF ~~ THEN REPLY #71837 /* ~I don't want your help, period, Saemon.  I don't trust you.  I'll find my own way.~ */ GOTO 35
END

IF ~~ THEN BEGIN nosecondway2
SAY @6
  IF ~~ THEN REPLY #71836 /* ~You made your point.  We'll do the disguise, as you suggested.~ */ GOTO 32
  IF ~~ THEN REPLY #71837 /* ~I don't want your help, period, Saemon.  I don't trust you.  I'll find my own way.~ */ GOTO 35
END
END
