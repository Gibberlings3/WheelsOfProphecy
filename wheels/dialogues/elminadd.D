APPEND amelm01

IF ~~ THEN BEGIN elminster_grove
SAY @0
=@1
IF ~~ THEN REPLY @2 GOTO elminster_grove_nice
IF ~~ THEN REPLY @3 GOTO elminster_grove_cross
END

IF ~~ THEN BEGIN elminster_grove_nice
SAY @4
IF ~~ THEN GOTO elminster_grove_expo
END

IF ~~ THEN BEGIN elminster_grove_cross
SAY @5
IF ~~ THEN GOTO elminster_grove_expo
END

IF ~~ THEN BEGIN elminster_grove_expo
SAY @6
=@7
=@8
  IF ~Dead("dw#melis")~ THEN DO ~ReallyForceSpell(Myself,SWOOSH_GONE)~ SOLVED_JOURNAL @1011 EXIT
  IF ~!Dead("dw#melis")~ THEN DO ~ReallyForceSpell(Myself,SWOOSH_GONE)~ SOLVED_JOURNAL @1012 EXIT
END

IF ~~ THEN BEGIN elminster_warning
SAY @9
=
@10
=@8
  IF ~~ THEN DO ~ReallyForceSpell(Myself,SWOOSH_GONE)~ EXIT
END

IF ~~ THEN BEGIN elminster_warning2
SAY @11
=
@10
=@8
  IF ~~ THEN DO ~ReallyForceSpell(Myself,SWOOSH_GONE)~ EXIT
END

END

ADD_TRANS_TRIGGER amelm01 7 ~Global("enclave","GLOBAL",2)!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~

EXTEND_BOTTOM amelm01 7
IF ~Dead("balth")Dead("sendai")Dead("abazigal")!AreaCheck("dw#teth")~ THEN REPLY #71763 GOTO elminster_grove
IF ~Dead("balth")Dead("sendai")Dead("abazigal")AreaCheck("dw#teth")~ THEN REPLY #71763 GOTO elminster_warning2
IF ~Dead("sendai")Dead("abazigal")Global("BalthazarFights","GLOBAL",1)~ THEN REPLY #71763 GOTO elminster_warning
END

REPLACE_STATE_TRIGGER amelm01 0 ~NumTimesTalkedTo(0)~

