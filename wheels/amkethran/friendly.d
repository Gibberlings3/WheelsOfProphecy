// the priest of Waukeen

ADD_STATE_TRIGGER amcler02 0 ~!Global("BalthazarFights","GLOBAL",1)~

APPEND amcler02 

IF ~Global("BalthazarFights","GLOBAL",1)~ THEN BEGIN friendlypriest
SAY @0 
  IF ~~ THEN REPLY #73968 /* ~Show me your services.~ */ DO ~StartStore("amcler02",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY #73969 /* ~No, I'll go.~ */ GOTO 16
END


END

// random man

ADD_STATE_TRIGGER amman01 0 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amman01 1 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amman01 2 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amman01 3 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amman01 4 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~

APPEND amman01 

IF ~RandomNum(3,1)Dead("balth")
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN amman01_replace0
SAY @1
IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)Dead("balth")
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN amman01_replace0
SAY @2
IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)Dead("balth")
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN amman01_replace3
SAY @3
IF ~~ THEN EXIT
END

IF ~RandomNum(3,1)Global("BalthazarFights","GLOBAL",1)!Global("DMWWVillageAttacked","GLOBAL",2)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN man1a
SAY @4
IF ~~ THEN EXIT
END


IF ~RandomNum(3,2)Global("BalthazarFights","GLOBAL",1)!Global("DMWWVillageAttacked","GLOBAL",2)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN man1b
SAY @5
IF ~~ THEN EXIT
END



IF ~RandomNum(3,3)Global("BalthazarFights","GLOBAL",1)!Global("DMWWVillageAttacked","GLOBAL",2)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN man1c
SAY @6
IF ~~ THEN EXIT
END

IF ~RandomNum(3,1)Global("BalthazarFights","GLOBAL",1)Global("DMWWVillageAttacked","GLOBAL",2)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN man1d
SAY @7
IF ~~ THEN EXIT
END


IF ~RandomNum(3,2)Global("BalthazarFights","GLOBAL",1)Global("DMWWVillageAttacked","GLOBAL",2)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN man1e
SAY @8
IF ~~ THEN EXIT
END



IF ~RandomNum(3,3)Global("BalthazarFights","GLOBAL",1)Global("DMWWVillageAttacked","GLOBAL",2)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN man1f
SAY @9
IF ~~ THEN EXIT
END

END

// random woman #1

ADD_STATE_TRIGGER amfem01 0 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amfem01 1 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amfem01 2 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amfem01 3 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amfem01 4 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~

APPEND amfem01 

IF ~RandomNum(3,1)Global("DMWWVillageAttacked","GLOBAL",2)Dead("balth")
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1a // from:
  SAY @10
  IF ~~ THEN EXIT
END


IF ~RandomNum(3,2)Global("DMWWVillageAttacked","GLOBAL",2)Dead("balth")
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1b // from:
  SAY @11
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)Global("DMWWVillageAttacked","GLOBAL",2)Dead("balth")
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1c // from:
  SAY @12
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,1)Global("DMWWVillageAttacked","GLOBAL",2)Global("BalthazarFights","GLOBAL",1)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1d // from:
  SAY @10
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)Global("DMWWVillageAttacked","GLOBAL",2)Global("BalthazarFights","GLOBAL",1)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1e // from:
  SAY @13
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)Global("DMWWVillageAttacked","GLOBAL",2)Global("BalthazarFights","GLOBAL",1)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1f // from:
  SAY @12
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,1)!Global("DMWWVillageAttacked","GLOBAL",2)Dead("balth")
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1g // from:
  SAY @14
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)!Global("DMWWVillageAttacked","GLOBAL",2)Dead("balth")
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1h // from:
  SAY @11
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)!Global("DMWWVillageAttacked","GLOBAL",2)Dead("balth")
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1i // from:
  SAY @12
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,1)!Global("DMWWVillageAttacked","GLOBAL",2)Global("BalthazarFights","GLOBAL",1)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1j // from:
  SAY @15
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)!Global("DMWWVillageAttacked","GLOBAL",2)Global("BalthazarFights","GLOBAL",1)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1k // from:
  SAY @13
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)!Global("DMWWVillageAttacked","GLOBAL",2)Global("BalthazarFights","GLOBAL",1)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem1l // from:
  SAY @12
  IF ~~ THEN EXIT
END

END

// random woman #2

ADD_STATE_TRIGGER amfem02 0 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~

APPEND amfem02

IF ~RandomNum(3,1)OR(2)Dead("balth")Global("BalthazarFights","GLOBAL",1)
!CheckStatLT(LastTalkedToBy,9,CHR)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN fem2 // from:
  SAY @16
  IF ~~ THEN EXIT
END

END

// bloke in bar

ADD_STATE_TRIGGER amcst01 0 ~!Global("DMWWVillageAttacked","GLOBAL",2)~
ADD_STATE_TRIGGER amcst01 1 ~!Global("DMWWVillageAttacked","GLOBAL",2)~
ADD_STATE_TRIGGER amcst01 2 ~!Global("DMWWVillageAttacked","GLOBAL",2)~
ADD_STATE_TRIGGER amcst01 3 ~!Global("DMWWVillageAttacked","GLOBAL",2)~
ADD_STATE_TRIGGER amcst01 4 ~!Global("DMWWVillageAttacked","GLOBAL",2)~
ADD_STATE_TRIGGER amcst01 5 ~!Global("DMWWVillageAttacked","GLOBAL",2)~
ADD_STATE_TRIGGER amcst01 6 ~!Global("DMWWVillageAttacked","GLOBAL",2)~

APPEND amcst01

IF ~RandomNum(6,1)~ THEN BEGIN c0 // from:
  SAY @17 
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,2)~ THEN BEGIN c1 // from:
  SAY @18
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,3)~ THEN BEGIN c2 // from:
  SAY @19 
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,4)~ THEN BEGIN c3 // from:
  SAY @20
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,5)~ THEN BEGIN c4 // from:
  SAY @21
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,6)~ THEN BEGIN c6 // from:
  SAY @22

  IF ~~ THEN EXIT
END

END


// fat man

ADD_STATE_TRIGGER amman02 0 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amman02 1 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
ADD_STATE_TRIGGER amman02 2 ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~


APPEND amman02 

IF ~RandomNum(3,1)OR(2)Dead("balth")Global("BalthazarFights","GLOBAL",1)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN d1 // from:
  SAY @23
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)OR(2)Dead("balth")Global("BalthazarFights","GLOBAL",1)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN d2 // from:
  SAY @24 
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)OR(2)Dead("balth")Global("BalthazarFights","GLOBAL",1)
!ReputationLT(LastTalkedToBy,7)~ THEN BEGIN d3 // from:
  SAY @25 
  IF ~~ THEN EXIT
END


END
