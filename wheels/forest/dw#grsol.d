BEGIN dw#grsol

IF ~NumTimesTalkedTo(0)~ THEN BEGIN start
SAY @0
IF ~~ THEN REPLY @1 GOTO rebuff
IF ~~ THEN REPLY @2 GOTO rebuff
IF ~~ THEN REPLY @3 GOTO rebuff
IF ~~ THEN REPLY @4 GOTO rebuff
END

IF ~~ THEN BEGIN rebuff
SAY @5
IF ~~ THEN EXIT END

