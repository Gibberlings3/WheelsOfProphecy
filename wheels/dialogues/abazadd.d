REPLACE ~abazigal~
IF ~!Dead("balth")HPGT(Myself,1)~
THEN BEGIN 0
SAY #67682 /* ~Welcome.  I have watched your progress with great interest.  For a lesser creature you are quite amusing.~ [ABAZIG08] */
IF ~~ THEN REPLY #67684 /* ~Vile Bhaalspawn!  I shall wipe your taint from the earth!~ */ GOTO taint
IF ~~ THEN REPLY @0 GOTO notworthy
IF ~~ THEN REPLY @1 GOTO nosharing
IF ~~ THEN REPLY @2 GOTO becomegod
END
END

APPEND ~abazigal~

IF WEIGHT #-11
~Dead("balth")HPGT(Myself,1)~
THEN BEGIN metabaz_balthdead
SAY @3
IF ~~ THEN REPLY #67684 /* ~Vile Bhaalspawn!  I shall wipe your taint from the earth!~ */ GOTO taint
IF ~~ THEN REPLY @0 GOTO notworthy
IF ~~ THEN REPLY @1 GOTO nosharing
IF ~~ THEN REPLY @2 GOTO notworthy
IF ~~ THEN REPLY @4 GOTO notworthy
IF ~!Dead("dw#melis")Dead("sendai")~ THEN REPLY @5 GOTO mel_location
END



IF ~~ THEN BEGIN mel_location
SAY @6
IF ~~ THEN REPLY @7 GOTO hehasuse2
IF ~~ THEN REPLY @8 GOTO notworthy
IF ~~ THEN REPLY @9 GOTO notworthy
IF ~~ THEN REPLY @10 GOTO yourpathscoff
END

IF ~~ THEN BEGIN nosharing
SAY @11
IF ~!Global("HadBhaal25Dream3","GLOBAL",1)~ THEN REPLY @12 DO ~SetGlobal("DMWWAbazNoShare","LOCALS",1)~ GOTO notworthy
IF ~Global("HadBhaal25Dream3","GLOBAL",1)~ THEN REPLY @12 DO ~SetGlobal("DMWWAbazNoShare","LOCALS",1)~ GOTO prophecy
IF ~~ THEN REPLY @13 DO ~SetGlobal("DMWWAbazNoShare","LOCALS",1)~ GOTO notworthy
END

IF ~~ THEN BEGIN prophecy
SAY @14
=@15
IF ~~ THEN REPLY @16 GOTO notworthy
IF ~~ THEN REPLY @17 GOTO notworthy
END

IF ~~ THEN BEGIN taint
SAY @18
IF ~Dead("balthazar")~ THEN REPLY @19 GOTO hehasuse2
IF ~!Dead("balthazar")!Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @19 GOTO hehasuse
IF ~~ THEN REPLY @8 GOTO notworthy
IF ~~ THEN REPLY @9 GOTO notworthy
IF ~~ THEN REPLY @10 GOTO yourpathscoff
END

IF ~~ THEN BEGIN hehasuse
SAY @20
IF ~~ THEN REPLY @21 GOTO themonk
IF ~~ THEN REPLY @22 GOTO neverwas
IF ~~ THEN REPLY @23 GOTO notworthy
IF ~~ THEN REPLY @24 GOTO notworthy
IF ~~ THEN REPLY @25 GOTO notworthy
END 

IF ~~ THEN BEGIN hehasuse2
SAY @26
IF ~~ THEN REPLY @23 GOTO notworthy
IF ~~ THEN REPLY @24 GOTO notworthy
IF ~~ THEN REPLY @25 GOTO notworthy
END 

IF ~~ THEN BEGIN themonk
SAY @27 
IF ~~ THEN REPLY @28 GOTO yeshim 
END


IF ~~ THEN BEGIN neverwas
SAY @29 
IF ~~ THEN REPLY @28 GOTO yeshim 
END

IF ~~ THEN BEGIN yeshim
SAY @30
IF ~~ THEN REPLY @31 DO ~SetGlobal("DMWWAbazRattedBalth","LOCALS",1)~ GOTO notworthy
IF ~~ THEN REPLY @32 DO ~SetGlobal("DMWWAbazRattedBalth","LOCALS",1)~ GOTO notworthy
END

IF ~~ THEN BEGIN becomegod
SAY @33
IF ~~ THEN REPLY @28 GOTO yeshim 
END

IF ~~ THEN BEGIN yourpathscoff
SAY @34 
IF ~~ THEN REPLY @35 GOTO notworthy
IF ~!Global("BalthazarFights","GLOBAL",1) OR(2)!Dead("sendai")!Dead("balth")~ THEN REPLY @36 GOTO notworthy
IF ~Dead("sendai")Dead("balth")~ THEN REPLY @37 GOTO notworthy
END

IF ~~ THEN BEGIN notworthy
SAY #67683 /* ~Save your taunts.  You are not worthy of having Bhaal's blood within you! Only a dragon is worthy of containing the Lord of Murder's immortal essence!~ [ABAZIG09] */
IF ~OR(2)!Dead("sendai")!Dead("balth") OR(2)!Dead("sendai") !Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @38 GOTO flattery
IF ~OR(2)!Dead("sendai")!Dead("balth") OR(2)!Dead("sendai") !Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @39 GOTO curiosity
IF ~Dead("balth")Dead("dw#melis")Dead("sendai")~ THEN REPLY @40 GOTO 2
IF ~Dead("balth")Dead("dw#melis")Dead("sendai")~ THEN REPLY @41 GOTO 2
IF ~Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @42 GOTO 2
IF ~~ THEN REPLY #67687 /* ~A dragon?  From what I hear, you're nothing but a mongrel half-breed.~ */ GOTO 2
IF ~~ THEN REPLY #67688 /* ~You sound like your son Draconis.  I enjoyed killing him, too.~ */ GOTO 2
IF ~Global("BalthazarFights","GLOBAL",0)OR(3)!Dead("balth")!Dead("dw#melis")!Dead("sendai")~ THEN REPLY #67689 /* ~I look forward to cleansing the Realms of your evil existence, Abazigal.~ */ GOTO 2

END

IF ~~ THEN BEGIN curiosity
SAY @43 
IF ~~ THEN REPLY @44 GOTO 2
IF ~~ THEN REPLY @45 GOTO flattery
END

IF ~~ THEN BEGIN flattery
SAY @46
IF ~!Global("DMWWAbazHuntReason","LOCALS",1)~ THEN REPLY @47 DO ~SetGlobal("DMWWAbazHuntReason","LOCALS",1)~ GOTO QAhunt
IF ~!Global("DMWWAbazNoShare","LOCALS",1)~ THEN REPLY @48 DO ~SetGlobal("DMWWAbazNoShare","LOCALS",1)~ GOTO QAsharing
IF ~!Global("DMWWAbazRattedBalth","LOCALS",1)!Dead("balth")~ THEN REPLY @49  DO ~SetGlobal("DMWWAbazRattedBalth","LOCALS",1)~ SOLVED_JOURNAL @1002 GOTO QAbalth
IF ~!Global("DMWWAbazRattedBalth","LOCALS",1)Dead("balth")~ THEN REPLY @50 DO ~SetGlobal("DMWWAbazRattedBalth","LOCALS",1)~ GOTO QAbalth2
IF ~!Global("DMWWAbazMelMum","LOCALS",1)~ THEN REPLY @51 DO ~SetGlobal("DMWWAbazMelMum","LOCALS",1)~ GOTO QAmel
IF ~~ THEN REPLY @52 GOTO 2
END

IF ~~ THEN BEGIN QAmel
SAY @53
=
@54
IF ~~ THEN  GOTO moreQA
END

IF ~~ THEN BEGIN QAbalth
SAY @55
IF ~~ THEN REPLY @31  GOTO 2
IF ~~ THEN REPLY @32  GOTO 2
IF ~~ THEN REPLY @56  GOTO moreQA
END


IF ~~ THEN BEGIN QAbalth2
SAY @57
IF ~~ THEN REPLY @31  GOTO 2
IF ~~ THEN REPLY @58  GOTO 2
IF ~~ THEN REPLY @56  GOTO moreQA
END


IF ~~ THEN BEGIN QAsharing
SAY @11
IF ~~ THEN  GOTO moreQA
END

IF ~~ THEN BEGIN QAsharing2
SAY @11
IF ~~ THEN  GOTO QAsharing3
END

IF ~~ THEN BEGIN QAsharing3
SAY @14
=@15
IF ~~ THEN GOTO moreQA
END



IF ~~ THEN BEGIN QAhunt
SAY @59
IF ~~ THEN GOTO moreQA
END

IF ~~ THEN BEGIN moreQA
SAY @60
IF ~!Global("DMWWAbazHuntReason","LOCALS",1)~ THEN REPLY @47 DO ~SetGlobal("DMWWAbazHuntReason","LOCALS",1)~ GOTO QAhunt
IF ~!Global("DMWWAbazNoShare","LOCALS",1)~ THEN REPLY @48 DO ~SetGlobal("DMWWAbazNoShare","LOCALS",1)~ GOTO QAsharing
IF ~!Global("DMWWAbazRattedBalth","LOCALS",1)!Dead("balth")~ THEN REPLY @49  DO ~SetGlobal("DMWWAbazRattedBalth","LOCALS",1)~ SOLVED_JOURNAL @1002 GOTO  QAbalth
IF ~!Global("DMWWAbazRattedBalth","LOCALS",1)Dead("balth")~ THEN REPLY @50 DO ~SetGlobal("DMWWAbazRattedBalth","LOCALS",1)~ GOTO QAbalth2
IF ~!Global("DMWWAbazMelMum","LOCALS",1)~ THEN REPLY @51 DO ~SetGlobal("DMWWAbazMelMum","LOCALS",1)~ GOTO QAmel
IF ~~ THEN REPLY @52 GOTO 2
END



IF ~~ THEN BEGIN balthdead
  SAY #67693 /* ~Know this even as I die, fool!  You have been used and misled.  Witness the truth to which you have been so blind!~ [ABAZIG13] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
AddXP2DA("ABAZIGAL")
EraseJournalEntry(67718)
EraseJournalEntry(72245)
StartCutScene("dw#melbd")
Kill(Myself)~
SOLVED_JOURNAL @1009
EXIT END

IF ~~ THEN BEGIN bothdead
SAY @61
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
AddXP2DA("ABAZIGAL")
EraseJournalEntry(67718)
EraseJournalEntry(72245)
EraseJournalEntry(66357)
Kill(Myself)
EndCutSceneMode()~
EXIT
END


IF ~~ THEN BEGIN meldead
SAY @62
  IF ~Dead("balth")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
AddXP2DA("ABAZIGAL")
EraseJournalEntry(67718)
EraseJournalEntry(72245)
EraseJournalEntry(66357)
Kill(Myself)
EndCutSceneMode()~
EXIT
  IF ~!Dead("balth")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
AddXP2DA("ABAZIGAL")
EraseJournalEntry(67718)
EraseJournalEntry(72245)
EraseJournalEntry(66357)
Kill(Myself)
EndCutSceneMode()~
UNSOLVED_JOURNAL @1013
EXIT
END



END


EXTEND_BOTTOM abazigal 3 
IF ~Dead("balth")!Dead("sendai")!Dead("dw#melis")~ THEN GOTO balthdead 
IF ~Dead("sendai")Dead("balth")!Dead("dw#melis")~ THEN GOTO bothdead 
IF ~Dead("dw#melis")~ THEN GOTO meldead
END

REPLACE_SAY abazigal 4 @63
