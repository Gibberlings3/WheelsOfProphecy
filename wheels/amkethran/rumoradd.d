ADD_STATE_TRIGGER rumamk 1 ~!Dead("balth")~

ADD_STATE_TRIGGER rumamk 4 ~!Dead("balth")~

APPEND rumamk

IF WEIGHT #-10 ~RandomNum(3,1)!Global("BalthazarFights","GLOBAL",1)!Dead("balth")!PartyHasItem("plot17b")!Global("DMWWRumorFaheed","GLOBAL",1)~ THEN BEGIN rumor0
SAY @0
IF ~~ THEN DO ~SetGlobal("DMWWRumorFaheed","GLOBAL",1)~ EXIT
END

IF WEIGHT #-10 ~RandomNum(3,1)Dead("balth")~ THEN BEGIN rumor1
SAY @1
IF ~~ THEN EXIT
END

IF WEIGHT #-10 ~Global("BalthazarFights","GLOBAL",1)~ THEN BEGIN rumor2
SAY @2
IF ~~ THEN EXIT
END

IF WEIGHT #-20 ~Global("DMWWVillageAttacked","GLOBAL",2)!Dead("sendai")~ THEN BEGIN rumor3
SAY @3
IF ~~ THEN EXIT
END


IF WEIGHT #-20 ~Global("DMWWVillageAttacked","GLOBAL",2)!Dead("abazigal")~ THEN BEGIN rumor4
SAY @4
IF ~~ THEN EXIT
END

IF WEIGHT #-20 ~Global("DMWWVillageAttacked","GLOBAL",2)!Dead("abazigal")!Dead("balth")~ THEN BEGIN rumor5
SAY @5
IF ~~ THEN EXIT
END

IF WEIGHT #-20 ~Global("DMWWVillageAttacked","GLOBAL",2)!Dead("sendai")!Dead("balth")~ THEN BEGIN rumor6
SAY @6
IF ~~ THEN EXIT
END

IF WEIGHT #-20 ~Global("DMWWVillageAttacked","GLOBAL",2)!Dead("sendai")~ THEN BEGIN rumor7
SAY @7
IF ~~ THEN EXIT
END

IF WEIGHT #-20 ~Global("DMWWVillageAttacked","GLOBAL",2)!Dead("abazigal")~ THEN BEGIN rumor8
SAY @8
IF ~~ THEN EXIT
END


END
