
APPEND ~balth~
                                                                                                                                                                                                    
IF
~Global("DMWWBalthFirst","GLOBAL",0) !Global("DMWWMercStatus","GLOBAL",4) HPGT(Myself,1) Global("HadBhaal25Dream2","GLOBAL",0)~
THEN BEGIN metbalthearly
SAY @0
IF ~~ THEN REPLY @1  GOTO R1_noanswers
IF ~~ THEN REPLY @2 GOTO R1_tough
IF ~~ THEN REPLY @3 GOTO R1_terror
IF ~Global("DMWWBarBalBhaal","GLOBAL",1)~ THEN REPLY @4 GOTO R1_isbhaal
IF ~~ THEN REPLY @5 GOTO R1_threat
END

IF
~Global("DMWWBalthFirst","GLOBAL",1) !Global("DMWWMercStatus","GLOBAL",4) HPGT(Myself,1) Global("HadBhaal25Dream2","GLOBAL",0)~
THEN BEGIN metbalthearlytwice
SAY @6
IF ~~ THEN GOTO ironic
END

IF
~Global("DMWWMercStatus","GLOBAL",4) HPGT(Myself,1) Global("HadBhaal25Dream2","GLOBAL",0)~
THEN BEGIN metbalthearlyfight
SAY #67694 
IF ~~ THEN GOTO ironic
END

IF ~~ THEN BEGIN R1_noanswers
SAY @7
IF ~~ THEN GOTO R1exit
END

IF ~~ THEN BEGIN R1_tough
SAY @8
IF ~~ THEN GOTO R1exit
END

IF ~~ THEN BEGIN R1_terror
SAY @9
IF ~~ THEN GOTO R1exit
END

IF ~~ THEN BEGIN R1_isbhaal
SAY @10
IF ~~ THEN GOTO R1exit
END


IF ~~ THEN BEGIN R1exit
SAY @11
=
@12
IF ~~ THEN REPLY @13 SOLVED_JOURNAL @1000 GOTO R1_departfriendly
IF ~~ THEN REPLY @14 SOLVED_JOURNAL @1000 GOTO R1_departstroppy
IF ~~ THEN REPLY @15 GOTO R1_goingnowhere
IF ~~ THEN REPLY @16 GOTO R1_nomanip
IF ~~ THEN REPLY @5 GOTO R1_threat
IF ~ReputationGT(Player1,10)~ THEN REPLY @17 GOTO R1_herotrue
IF ~!ReputationGT(Player1,10)~ THEN REPLY @17 GOTO R1_herofalse
END

IF ~~ THEN BEGIN R1_goingnowhere
SAY @18
IF ~~ THEN GOTO ironic
END


IF ~~ THEN BEGIN R1_nomanip
SAY @19
IF ~~ THEN GOTO ironic
END

IF ~~ THEN BEGIN R1_threat
SAY @20
IF ~~ THEN GOTO ironic
END

IF ~~ THEN BEGIN R1_herofalse
SAY @21
IF ~~ THEN REPLY @13 SOLVED_JOURNAL @1000 GOTO R1_departfriendly
IF ~~ THEN REPLY @14 SOLVED_JOURNAL @1000 GOTO R1_departstroppy
IF ~~ THEN REPLY @15 GOTO R1_goingnowhere
IF ~~ THEN REPLY @16 GOTO R1_nomanip
IF ~~ THEN REPLY @5 GOTO R1_threat
END

IF ~~ THEN BEGIN R1_herotrue
SAY @22
=
@23
IF ~~ THEN REPLY @13 SOLVED_JOURNAL @1000 GOTO R1_departfriendly
IF ~~ THEN REPLY @14 SOLVED_JOURNAL @1000 GOTO R1_departstroppy
IF ~~ THEN REPLY @15 GOTO R1_goingnowhere
IF ~~ THEN REPLY @16 GOTO R1_nomanip
IF ~~ THEN REPLY @5 GOTO R1_threat
IF ~~ THEN REPLY @24 GOTO R1_nopeace
END

IF ~~ THEN BEGIN R1_departfriendly
SAY @25
IF ~~ THEN DO 
~TakePartyItem("plot17b")
SetGlobal("DMWWBalthFirst","GLOBAL",1)
SetGlobal("BalthazarEncounter","AR5505",0)
StartCutSceneMode()
StartCutScene("dw#balc6")~
EXIT END

IF ~~ THEN BEGIN R1_departstroppy
SAY @26
IF ~~ THEN DO 
~TakePartyItem("plot17b")
SetGlobal("DMWWBalthFirst","GLOBAL",1)
SetGlobal("BalthazarEncounter","AR5505",0)
StartCutSceneMode()
StartCutScene("dw#balc6")~
EXIT END

IF ~~ THEN BEGIN R1_nopeace
SAY @27
IF ~~ THEN GOTO ironic
END

IF ~~ THEN BEGIN ironic
SAY @28
=
@29
IF ~~ THEN REPLY @30 SOLVED_JOURNAL @1001 GOTO wontpayprice
IF ~~ THEN REPLY @31 SOLVED_JOURNAL @1001 GOTO canttrustyou
END

IF ~~ THEN BEGIN wontpayprice
SAY @32
IF ~~ THEN REPLY @33 GOTO imaspawn
IF ~~ THEN REPLY @34 GOTO imaspawn
END

IF ~~ THEN BEGIN canttrustyou
SAY @35
IF ~~ THEN REPLY @33 GOTO imaspawn
IF ~~ THEN REPLY @34 GOTO imaspawn
END

IF ~~ THEN BEGIN imaspawn
 SAY #67704 /* ~Look beyond the surface, <CHARNAME>.  The truth lies buried deep - as it often does when dealing with those of Bhaal's treacherous blood.~ */
IF ~~ THEN GOTO killfive
END

IF ~~ THEN BEGIN killfive
SAY @36
IF ~~ THEN REPLY @37 GOTO wonttellofmel
IF ~~ THEN REPLY @38 GOTO confident
IF ~~ THEN REPLY @39 GOTO noimnice
END

IF ~~ THEN BEGIN wonttellofmel
SAY @40
IF ~~ THEN REPLY @41 GOTO noimnice
END

IF ~~ THEN BEGIN confident
SAY @42
IF ~~ THEN REPLY @43 GOTO noimnice
END


IF ~~ THEN BEGIN noimnice
SAY #67724 /* ~Oh no, <CHARNAME>.  I have no such designs.  Bhaal's taint is an evil blight upon the world.  I have no intention of bringing the Lord of Murder back into existence.~ */
=#67725 /* ~My plan is much more altruistic.  I have vowed to exterminate all of Bhaal's children, forever wiping the Realms clean of his tainted existence.  You have merely helped me in my goal.~ */
IF ~~ THEN REPLY #67726 /* ~But you are a Child of Bhaal as well - what happens to you?~ */ GOTO suicide 
END

IF ~~ THEN BEGIN suicide
  SAY #67727 /* ~Once I am certain I am the last, once I know there are no others, I will perform a ritual suicide.  Bhaal's evil will die with me.  But first, I must end your evil existence.~ [BALTHA14] */
  IF ~Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,18)
~ THEN REPLY #67730 /* ~But I am not evil!  I am a force of good and justice!~ */ GOTO charnamegood
  IF ~!Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,18)
~ THEN REPLY #67730 /* ~But I am not evil!  I am a force of good and justice!~ */ GOTO charnamehighrep
  IF ~Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,18)
~ THEN REPLY #67730 /* ~But I am not evil!  I am a force of good and justice!~ */ GOTO charnamegoodish
  IF ~!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,18)
ReputationGT(Player1,6)
~ THEN REPLY #67730 /* ~But I am not evil!  I am a force of good and justice!~ */ GOTO charnamebad
  IF ~~ THEN REPLY #67731 /* ~You sound like a hypocrite to me, sentencing those you have no right to judge!~ */ GOTO icanjudge
  IF ~~ THEN REPLY @44 GOTO firstmeetfight
  IF ~~ THEN REPLY #67733 /* ~How noble.  I'll enjoy spilling your pretentious guts all over the floor.~ */ GOTO firstmeetfight
  IF ~Alignment(Player1,MASK_EVIL)
!ReputationGT(Player1,6)
~ THEN REPLY #67730 /* ~But I am not evil!  I am a force of good and justice!~ */ GOTO charnameverybad
END

IF ~~ THEN BEGIN charnamegood
  SAY @45
=@46
IF ~~ THEN GOTO howmany
END

IF ~~ THEN BEGIN charnamehighrep
  SAY @47
=@46
  IF ~~ THEN  GOTO howmany
END

IF ~~ THEN BEGIN charnamegoodish
  SAY @48 
=@46
 IF ~~ THEN GOTO howmany
END

IF ~~ THEN BEGIN charnamebad
  SAY @49
  IF ~~ THEN GOTO howmany
END

IF ~~ THEN BEGIN charnameverybad
  SAY @50 
  IF ~~ THEN GOTO howmany
END

IF ~~ THEN BEGIN icanjudge
  SAY @51
=@46
 IF ~~ THEN GOTO howmany
END

IF ~~ THEN BEGIN howmany
  SAY #67737 /* ~How many bodies have you left in your wake?  Hundreds?  Thousands?  Saradush is a smoking waste... how many other cities and towns have you brought destruction raining down upon?~ [BALTHA15] */
  IF ~~ THEN REPLY #67738 /* ~But it wasn't my fault!  I'm a victim of circumstance!~ */ GOTO howmany2
  IF ~~ THEN REPLY #67739 /* ~I can explain everything, if you give me a chance.~ */ GOTO howmany2
  IF ~~ THEN REPLY #67740 /* ~And how many corpses have you left behind, Balthazar?~ */ GOTO howmany2
  IF ~~ THEN REPLY #67741 /* ~I bring destruction wherever I go, and I revel in the blood!  I am death incarnate!~ */ GOTO firstmeetfight
END

IF ~~ THEN BEGIN howmany2
  SAY #67742 /* ~I am much the same, <CHARNAME>.  Our mere presence brings death... it is inevitable.  It is our destiny.  We are not to blame, we are slaves to our father's tainted blood.~ */
  IF ~~ THEN GOTO howmany3
END

IF ~~ THEN BEGIN howmany3
  SAY #67743 /* ~And as your power grows, <CHARNAME>, so shall the ruin sown in your passing.  Kingdoms will fall, and the rivers of Faerun will run with blood.~ [BALTHA16] */
  IF ~~ THEN REPLY #67744 /* ~No, I do not accept this destiny you are laying on me!~ */ GOTO firstmeetfight
  IF ~~ THEN REPLY #67745 /* ~You condemn me based on my possible future?  That is not justice.~ */ GOTO firstmeetfight
  IF ~~ THEN REPLY #67746 /* ~I like the sound of that!~ */ GOTO firstmeetfight
END

IF ~~ THEN BEGIN firstmeetfight
  SAY #67734 /* ~Further conversation is pointless, <CHARNAME>.  I have a task which I must complete.  Your death is a necessity, Bhaalspawn.~ [BALTHA17] */
  IF ~~ THEN DO 
~Shout(ALERT)
Enemy()
~
SOLVED_JOURNAL @52
EXIT
END

IF
~HP(Myself,1)Global("HadBhaal25Dream2","GLOBAL",0)
OR(2)
	Alignment(Player1,MASK_GOOD)
	ReputationGT(Player1,18)~ 
THEN BEGIN firstdeathgood
SAY @53
=
@54
=
@55
=
@56
IF ~~ THEN DO 
~Kill(Myself)~
EXIT END

IF
~HP(Myself,1)Global("HadBhaal25Dream2","GLOBAL",0)
!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,18)
ReputationGT(Player1,6)~
THEN BEGIN firstdeathokay
SAY @53
=
@57
=
@58
=
@56
IF ~~ THEN DO
~Kill(Myself)~
EXIT END

IF ~HP(Myself,1)Global("HadBhaal25Dream2","GLOBAL",0)
!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,6)~
THEN BEGIN firstdeathokay
SAY @59
=
@60
=
@58
=
@56
IF ~~ THEN DO
~Kill(Myself)~
EXIT END


IF ~Dead("dw#melis")!Global("HadBhaal25Dream3","GLOBAL",1)~ THEN BEGIN post_melissan
SAY @61
IF ~!Dead("sendai")~ THEN REPLY @62  GOTO 22
IF ~!Dead("abazigal")~ THEN REPLY @63 GOTO 22
IF ~~ THEN REPLY @64 GOTO 22
END

IF ~~ THEN BEGIN convince_sendai_start
SAY @65 
IF ~~ THEN REPLY @66 GOTO convince_sendai_fight
IF ~CheckStatGT(Player1,8,WIS)
~ THEN REPLY@67 GOTO convince_melscheme
  IF ~~ THEN REPLY @68 GOTO convince_resist
  IF ~~ THEN REPLY @69  DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO convince_sendai_strength
END

IF ~~ THEN BEGIN convince_abazigal_start
SAY @70 
IF ~~ THEN REPLY @71 GOTO convince_abazigal_fight
IF ~CheckStatGT(Player1,8,WIS)
~ THEN REPLY@67 GOTO convince_melscheme
  IF ~~ THEN REPLY @72 GOTO convince_resist
  IF ~~ THEN REPLY @73  DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-2)~ GOTO convince_sendai_strength
END

IF ~~ THEN BEGIN convince_sendai_fight
  SAY @74
  IF ~OR(2)
Alignment(Player1,MASK_EVIL)
CheckStatLT(Player1,16,CHR)
~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)
~ GOTO convince_sendai_fight_evil
  IF ~!Alignment(Player1,MASK_EVIL)
CheckStatGT(Player1,15,CHR)
~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)
~ GOTO 61
END

IF ~~ THEN BEGIN convince_abazigal_fight
  SAY @75
  IF ~OR(2)
Alignment(Player1,MASK_EVIL)
CheckStatLT(Player1,16,CHR)
~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)
~ GOTO convince_abazigal_fight_evil
  IF ~!Alignment(Player1,MASK_EVIL)
CheckStatGT(Player1,15,CHR)
~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)
~ GOTO 61
END

IF ~~ THEN BEGIN convince_sendai_fight_evil
SAY @76
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN convince_abazigal_fight_evil
SAY @77
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN convince_melscheme
  SAY @78
  IF ~CheckStatLT(Player1,16,WIS)
~ THEN REPLY @79 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)
~ GOTO 63
  IF ~CheckStatGT(Player1,15,WIS)
CheckStatLT(Player1,19,WIS)
~ THEN REPLY @80 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)
~ GOTO convince_okay
  IF ~CheckStatGT(Player1,18,WIS)
~ THEN REPLY @81 DO ~IncrementGlobal("ConvinceBalth","GLOBAL",2)
~ GOTO 65
END

IF ~~ THEN BEGIN convince_okay
  SAY @82
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN convince_resist
  SAY @83
  IF ~OR(2)
Alignment(Player1,MASK_GOOD)
ReputationGT(Player1,17)
~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",1)
~ GOTO 67
  IF ~!Alignment(Player1,MASK_GOOD)
!ReputationGT(Player1,17)
~ THEN DO ~IncrementGlobal("ConvinceBalth","GLOBAL",-1)
~ GOTO convince_resist_bad
END

IF ~~ THEN BEGIN convince_resist_bad
  SAY @84
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN convince_sendai_strength
  SAY @85
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN convince_abazigal_strength
  SAY @86
  IF ~!GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 48
  IF ~GlobalLT("ConvinceBalth","GLOBAL",-2)
~ THEN GOTO 60
END

IF ~~ THEN BEGIN takebattle_sendai
  SAY @87
  IF ~~ THEN REPLY @88  SOLVED_JOURNAL @1005 GOTO 56
  IF ~~ THEN REPLY @89 GOTO 57
  IF ~~ THEN REPLY @90 GOTO 57
END

IF ~~ THEN BEGIN takebattle_abazigal
  SAY @91
  IF ~~ THEN REPLY @88  SOLVED_JOURNAL @1005 GOTO 56
  IF ~~ THEN REPLY @89 GOTO 57
  IF ~~ THEN REPLY @90 GOTO 57
END

IF ~~ THEN BEGIN itsadeal_sendai
SAY @92
=
@93
IF ~~ THEN GOTO itsadeal
END

IF ~~ THEN BEGIN itsadeal_abazigal
SAY @92
=
@94
IF ~~ THEN GOTO itsadeal
END


IF ~~ THEN BEGIN itsadeal
SAY @95
=
@96
IF ~~ THEN REPLY @97 DO 
~SetGlobal("BalthazarFights","GLOBAL",1)
SetGlobal("DMWWBalthMidAlliance","GLOBAL",1)
ActionOverride("balelit1",EscapeArea())
ActionOverride("balelit2",EscapeArea())
ActionOverride("balelit3",EscapeArea())
ActionOverride("balelit4",EscapeArea())
~ GOTO todream
IF ~~ THEN REPLY @98DO 
~SetGlobal("BalthazarFights","GLOBAL",1)
SetGlobal("DMWWBalthMidAlliance","GLOBAL",1)
ActionOverride("balelit1",EscapeArea())
ActionOverride("balelit2",EscapeArea())
ActionOverride("balelit3",EscapeArea())
ActionOverride("balelit4",EscapeArea())
~ GOTO todream
IF ~~ THEN REPLY @99 GOTO 57
IF ~~ THEN REPLY @100 GOTO endbetrayal
END

IF ~~ THEN BEGIN todream
SAY @101
IF ~~ THEN DO 
~ClearAllActions()
SetGlobal("HadBhaal25Dream3","GLOBAL",1)
StartCutSceneMode()
StartCutScene("cut235a")
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
~ SOLVED_JOURNAL @1007
EXIT END

IF ~OR(2)!Dead("sendai")!Dead("abazigal")!Allegiance(Myself,ENEMY)Global("HadBhaal25Dream3","GLOBAL",1)~ THEN BEGIN postdream
SAY @102
IF ~~ THEN REPLY @103 GOTO pre_enclave_chat
END


IF ~~ THEN BEGIN pre_enclave_chat
SAY @104
IF ~~ THEN REPLY @105 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~ EXIT
IF ~~ THEN REPLY @106 GOTO pre_enclave_QA
END



IF ~~ THEN BEGIN pre_enclave_QA
SAY @107
IF ~~ THEN REPLY @108 GOTO QA_melbackstory
IF ~~ THEN REPLY @109 GOTO QA_meldead
IF ~!Dead("sendai")~ THEN REPLY @110 GOTO QA_killwise
IF ~!Dead("abazigal")~ THEN REPLY @111 GOTO QA_killwise
IF ~!Dead("sendai")~ THEN REPLY @112 GOTO QA_sendai
IF ~!Dead("abazigal")~ THEN REPLY @113 GOTO QA_abazigal
IF ~!Dead("sendai")~ THEN REPLY @114 GOTO QA_enclave
IF ~!Dead("abazigal")~ THEN REPLY @115 GOTO QA_lair
IF ~~ THEN REPLY @116 GOTO QA_comealong
END

IF ~~ THEN BEGIN QA_melbackstory
SAY @117
=
@118
=
@119
IF ~~ THEN REPLY @109 GOTO QA_meldead
IF ~!Dead("sendai")~ THEN REPLY @110 GOTO QA_killwise
IF ~!Dead("abazigal")~ THEN REPLY @111 GOTO QA_killwise
IF ~!Dead("sendai")~ THEN REPLY @112 GOTO QA_sendai
IF ~!Dead("abazigal")~ THEN REPLY @113 GOTO QA_abazigal
IF ~!Dead("sendai")~ THEN REPLY @114 GOTO QA_enclave
IF ~!Dead("abazigal")~ THEN REPLY @115 GOTO QA_lair
IF ~!Dead("sendai")~ THEN REPLY @120 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~!Dead("abazigal")~ THEN REPLY @121 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~~ THEN REPLY @116 GOTO QA_comealong
END

IF ~~ THEN BEGIN QA_meldead
SAY @122
=
@119
IF ~~ THEN REPLY @108 GOTO QA_melbackstory
IF ~!Dead("sendai")~ THEN REPLY @110 GOTO QA_killwise
IF ~!Dead("abazigal")~ THEN REPLY @111 GOTO QA_killwise
IF ~!Dead("sendai")~ THEN REPLY @112 GOTO QA_sendai
IF ~!Dead("abazigal")~ THEN REPLY @113 GOTO QA_abazigal
IF ~!Dead("sendai")~ THEN REPLY @114 GOTO QA_enclave
IF ~!Dead("abazigal")~ THEN REPLY @115 GOTO QA_lair
IF ~!Dead("sendai")~ THEN REPLY @120 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~!Dead("abazigal")~ THEN REPLY @121 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~~ THEN REPLY @116 GOTO QA_comealong
END

IF ~~ THEN BEGIN QA_killwise
SAY @123
=
@124
=
@119
IF ~~ THEN REPLY @108 GOTO QA_melbackstory
IF ~~ THEN REPLY @109 GOTO QA_meldead
IF ~!Dead("sendai")~ THEN REPLY @112 GOTO QA_sendai
IF ~!Dead("abazigal")~ THEN REPLY @113 GOTO QA_abazigal
IF ~!Dead("sendai")~ THEN REPLY @114 GOTO QA_enclave
IF ~!Dead("abazigal")~ THEN REPLY @115 GOTO QA_lair
IF ~!Dead("sendai")~ THEN REPLY @120 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~!Dead("abazigal")~ THEN REPLY @121 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~~ THEN REPLY @116 GOTO QA_comealong
END

IF ~~ THEN BEGIN QA_sendai
SAY @125
=
@119
IF ~~ THEN REPLY @108 GOTO QA_melbackstory
IF ~~ THEN REPLY @109 GOTO QA_meldead
IF ~!Dead("sendai")~ THEN REPLY @110 GOTO QA_killwise
IF ~!Dead("abazigal")~ THEN REPLY @111 GOTO QA_killwise
IF ~!Dead("abazigal")~ THEN REPLY @113 GOTO QA_abazigal
IF ~!Dead("sendai")~ THEN REPLY @114 GOTO QA_enclave
IF ~!Dead("abazigal")~ THEN REPLY @115 GOTO QA_lair
IF ~!Dead("sendai")~ THEN REPLY @120 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~!Dead("abazigal")~ THEN REPLY @121 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~~ THEN REPLY @116 GOTO QA_comealong
END

IF ~~ THEN BEGIN QA_abazigal
SAY @126
=
@119
IF ~~ THEN REPLY @108 GOTO QA_melbackstory
IF ~~ THEN REPLY @109 GOTO QA_meldead
IF ~!Dead("sendai")~ THEN REPLY @110 GOTO QA_killwise
IF ~!Dead("abazigal")~ THEN REPLY @111 GOTO QA_killwise
IF ~!Dead("sendai")~ THEN REPLY @112 GOTO QA_sendai
IF ~!Dead("sendai")~ THEN REPLY @114 GOTO QA_enclave
IF ~!Dead("abazigal")~ THEN REPLY @115 GOTO QA_lair
IF ~!Dead("sendai")~ THEN REPLY @120 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~!Dead("abazigal")~ THEN REPLY @121 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~~ THEN REPLY @116 GOTO QA_comealong
END

IF ~~ THEN BEGIN QA_enclave
SAY @127
=
@128
=
@119
IF ~~ THEN REPLY @108 GOTO QA_melbackstory
IF ~~ THEN REPLY @109 GOTO QA_meldead
IF ~!Dead("sendai")~ THEN REPLY @110 GOTO QA_killwise
IF ~!Dead("abazigal")~ THEN REPLY @111 GOTO QA_killwise
IF ~!Dead("sendai")~ THEN REPLY @112 GOTO QA_sendai
IF ~!Dead("abazigal")~ THEN REPLY @113 GOTO QA_abazigal
IF ~!Dead("abazigal")~ THEN REPLY @115 GOTO QA_lair
IF ~!Dead("sendai")~ THEN REPLY @120 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~!Dead("abazigal")~ THEN REPLY @121 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~~ THEN REPLY @116 GOTO QA_comealong
END

IF ~~ THEN BEGIN QA_lair
SAY @129
=
@130
=
@131
=
@119
IF ~~ THEN REPLY @108 GOTO QA_melbackstory
IF ~~ THEN REPLY @109 GOTO QA_meldead
IF ~!Dead("sendai")~ THEN REPLY @110 GOTO QA_killwise
IF ~!Dead("abazigal")~ THEN REPLY @111 GOTO QA_killwise
IF ~!Dead("sendai")~ THEN REPLY @112 GOTO QA_sendai
IF ~!Dead("abazigal")~ THEN REPLY @113 GOTO QA_abazigal
IF ~!Dead("sendai")~ THEN REPLY @114 GOTO QA_enclave
IF ~!Dead("sendai")~ THEN REPLY @120 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~!Dead("abazigal")~ THEN REPLY @121 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~~ THEN REPLY @116 GOTO QA_comealong
END

IF ~~ THEN BEGIN QA_comealong
SAY @132
=
@119
IF ~~ THEN REPLY @108 GOTO QA_melbackstory
IF ~~ THEN REPLY @109 GOTO QA_meldead
IF ~!Dead("sendai")~ THEN REPLY @110 GOTO QA_killwise
IF ~!Dead("abazigal")~ THEN REPLY @111 GOTO QA_killwise
IF ~!Dead("sendai")~ THEN REPLY @112 GOTO QA_sendai
IF ~!Dead("abazigal")~ THEN REPLY @113 GOTO QA_abazigal
IF ~!Dead("sendai")~ THEN REPLY @114 GOTO QA_enclave
IF ~!Dead("abazigal")~ THEN REPLY @115 GOTO QA_lair
IF ~!Dead("sendai")~ THEN REPLY @120 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
IF ~!Dead("abazigal")~ THEN REPLY @121 DO ~CreateCreatureObjectOffScreen("dw#monme",Player1,0,0,0)~  EXIT
END

IF ~Global("DMWWBvMEnd","GLOBAL",2)Global("HadBhaal25Dream5","GLOBAL",0)Global("HadBhaal25Dream3","GLOBAL",1)!Dead("dw#melis")~ THEN BEGIN BvM_at_end
SAY @133
IF ~~ THEN DO ~SetGlobal("DMWWBvMEnd","GLOBAL",3)~ EXTERN dw#melis BvM_melbattle
END

IF ~Dead("dw#melis")Dead("abazigal")Dead("sendai")!Global("HadBhaal25Dream5","GLOBAL",1)Global("HadBhaal25Dream3","GLOBAL",1)~ THEN BEGIN whatnow
SAY @134
IF ~~ THEN REPLY @135 GOTO whatofbhaal
IF ~Global("DMWWBvMEnd","GLOBAL",2)~ THEN REPLY @136 GOTO whatofbhaal
IF ~!Global("DMWWBvMEnd","GLOBAL",2)~ THEN REPLY @137 GOTO whatofbhaal
IF ~~ THEN REPLY @138 SOLVED_JOURNAL @1015 GOTO endbetrayal
END

IF ~~ THEN BEGIN endbetrayal
SAY @139
IF ~~ THEN DO
~SetGlobal("BalthazarFights","GLOBAL",0)
DestroyItem("minhp1")
Enemy()~
EXIT END

IF ~~ THEN BEGIN whatofbhaal
SAY @140
=
@141
IF ~~ THEN REPLY @142 GOTO stonefaces
IF ~~ THEN REPLY @143 GOTO stonefaces
END

IF ~~ THEN BEGIN stonefaces
SAY @144
=
@145
IF ~~ THEN REPLY @146 GOTO stonefaces2
END

IF ~~ THEN BEGIN stonefaces2
SAY @147
IF ~~ THEN DO ~ReallyForceSpell(Myself,DRYAD_TELEPORT)SetGlobal("DMWWGroveRevealed","GLOBAL",1)~ SOLVED_JOURNAL @1014 EXIT
END

IF ~Global("HadBhaal25Dream5","GLOBAL",1)~ THEN BEGIN balthatheads1
SAY @148
IF ~~ THEN REPLY @149 GOTO balthatheads2
END

IF ~~ THEN BEGIN balthatheads2
SAY @150
IF ~~ THEN REPLY @151 GOTO finalfight
IF ~~ THEN REPLY @152 SOLVED_JOURNAL @1019 GOTO endbetrayal
END

IF ~~ THEN BEGIN finalfight
SAY @153
IF ~~ THEN DO
~ReallyForceSpell(Myself,DRYAD_TELEPORT)~
SOLVED_JOURNAL @1018
EXIT END

IF ~~ THEN BEGIN fightbalalone
SAY @206
IF ~~ THEN DO ~Enemy()
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ EXIT
END

IF WEIGHT #-10 ~Global("DMWWMelHostile","GLOBAL",3)~ THEN BEGIN midbetrayal
SAY @154
IF ~~ THEN DO
~SetGlobal("DMWWMelHostile","GLOBAL",4)~
EXIT END


END

CHAIN
IF
~!Dead("dw#melis")
Global("HadBhaal25Dream3","GLOBAL",0)
Global("HadBhaal25Dream2","GLOBAL",1)~
THEN balth BvM_balthstart
#67694 /* ~Ah, <CHARNAME>... your presence here shows me how foolish I have been in gathering my army of mercenaries.  I truly regret my wasted efforts at the expense of Amkethran's citizens.~ [BALTHA10] */
== dw#melis
@155
END
IF ~~ THEN REPLY @156 EXTERN dw#melis BvM_melmanip
IF ~Dead("sendai")~ THEN REPLY @157
EXTERN balth BvM_army_sendai
IF ~Dead("abazigal")~ THEN REPLY @157
EXTERN balth BvM_army_abazigal
IF ~~ THEN REPLY @158 EXTERN dw#melis BvM_betrayed


APPEND dw#melis
IF ~~ THEN BEGIN BvM_melmanip
SAY @159
IF ~~ THEN EXTERN balth BvM_nodeny
END

IF ~~ THEN BEGIN BvM_betrayed
SAY @160
IF ~~ THEN EXTERN balth BvM_nodeny
END
END

APPEND balth
IF ~~ THEN BEGIN BvM_army_sendai
  SAY @161 
IF ~~ THEN EXTERN dw#melis BvM_meldontstandthere
END

IF ~~ THEN BEGIN BvM_army_abazigal
  SAY @162 
IF ~~ THEN EXTERN dw#melis BvM_meldontstandthere
END
END

APPEND dw#melis
IF ~~ THEN BEGIN BvM_meldontstandthere
SAY @163
IF ~~ THEN EXTERN balth BvM_nodeny
END
END

CHAIN
IF ~~ THEN balth BvM_nodeny
@164
= #67707 /* ~Melissan recognized the taint of Bhaal within me, just as she recognized it in Sendai, Abazigal and the others.  Just as she recognized it in you.~ [BALTHA11] */
= #67708 /* ~She lured me with promises of power and glory, but I followed her for a different reason.  Only by joining the Five could I discover who the others were - and plot their demise.~ [BALTHA12] */
== dw#melis @165
END
++ @166 EXTERN dw#melis BvM_biggerthreat
++ @167  SOLVED_JOURNAL @1006 EXTERN balth 25
++ @168  EXTERN dw#melis BvM_believeanything



CHAIN
IF ~~ THEN dw#melis BvM_biggerthreat
@169
== balth
@170
END
IF ~~ THEN SOLVED_JOURNAL @1006 EXTERN balth 25

APPEND dw#melis
IF ~~ THEN BEGIN BvM_believeanything
SAY @171
=
@172
IF ~~ THEN REPLY @173  SOLVED_JOURNAL @1006 EXTERN balth 25
IF ~~ THEN REPLY @174  SOLVED_JOURNAL @1006 EXTERN balth 25
IF ~~ THEN REPLY @175 GOTO BvM_melbattle
IF ~~ THEN REPLY @176 GOTO BvM_melbattle
END

IF ~~ THEN BEGIN BvM_melbattle
SAY @177
=
@178
IF ~~ THEN DO 
~SetGlobal("DMWWMelHostile","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("dw#balc3")~
EXIT END 

END

BEGIN dw#monme

IF ~!Dead("abazigal")~ THEN BEGIN warning_abaz
SAY @179
IF ~~ THEN EXTERN balth army_abaz
END


IF ~!Dead("sendai")~ THEN BEGIN warning_send
SAY @180
IF ~~ THEN EXTERN balth army_send
END


CHAIN 
IF ~~ THEN balth army_abaz
@181
== dw#monme 
@182
=@183
== balth
@184
== dw#monme
@185
== balth
@186
=
@187
END
IF ~~ THEN DO ~SetGlobal("DMWWVillageAttacked","GLOBAL",1)SetGlobal("DMWWMercStatus","GLOBAL",2)SetGlobal("DMWWBalthMidAlliance","GLOBAL",1)~
EXIT 

CHAIN 
IF ~~ THEN balth army_send
@181
== dw#monme 
@188
=@189
== balth
@190
== dw#monme
@191
== balth
@192
=
@187
END
IF ~~ THEN DO ~SetGlobal("DMWWVillageAttacked","GLOBAL",1)SetGlobal("DMWWMercStatus","GLOBAL",2)SetGlobal("DMWWBalthMidAlliance","GLOBAL",1)~
EXIT 




EXTEND_TOP balth 44 49 94 
IF ~Global("WhatBecomesMelissan","LOCALS",0)!Dead("sendai")~ REPLY @193 DO ~SetGlobal("WhatBecomesMelissan","LOCALS",1)~ GOTO convince_sendai_start
IF ~Global("WhatBecomesMelissan","LOCALS",0)!Dead("abazigal")~ REPLY @194 DO ~SetGlobal("WhatBecomesMelissan","LOCALS",1)~ GOTO convince_abazigal_start
END

EXTEND_TOP balth 50
IF ~GlobalGT("ConvinceBalth","GLOBAL",3) !Dead("sendai")~ REPLY @195 GOTO itsadeal_sendai
IF ~!GlobalGT("ConvinceBalth","GLOBAL",3) !Dead("sendai")~ REPLY @195 GOTO 54
IF ~GlobalGT("ConvinceBalth","GLOBAL",3) !Dead("abazigal")~ REPLY @196 GOTO itsadeal_abazigal
IF ~!GlobalGT("ConvinceBalth","GLOBAL",3) !Dead("abazigal")~ REPLY @196 GOTO 54
END

EXTEND_TOP balth 54
IF ~GlobalGT("ConvinceBalth","GLOBAL",0)!Dead("sendai")~ THEN GOTO takebattle_sendai
IF ~GlobalGT("ConvinceBalth","GLOBAL",0)!Dead("abazigal")~ THEN GOTO takebattle_abazigal
END

EXTEND_BOTTOM balth 44 94
IF ~Dead("dw#melis")~ REPLY @201 GOTO fightbalalone
END

EXTEND_BOTTOM balth 45
IF ~Dead("dw#melis")~ REPLY @202 GOTO fightbalalone
END

EXTEND_BOTTOM balth 49
IF ~Dead("dw#melis")~ REPLY @203 GOTO fightbalalone
END

EXTEND_BOTTOM balth 71
IF ~Dead("dw#melis")~ REPLY @204 GOTO fightbalalone
END

EXTEND_BOTTOM balth 84
IF ~Dead("dw#melis")~ REPLY @205 GOTO fightbalalone
END


REPLACE balth 
IF ~~ THEN BEGIN 53
SAY @197
IF ~~ THEN GOTO fightmelissan_cont
END
END

APPEND balth
IF ~~ THEN BEGIN fightmelissan_cont
SAY
@198
=
@199
=
@200
IF ~~ THEN DO ~ActionOverride("balelit1",EscapeArea())
ActionOverride("balelit2",EscapeArea())
ActionOverride("balelit3",EscapeArea())
ActionOverride("balelit4",EscapeArea())
SetGlobal("DMWWBvMEnd","GLOBAL",1)
SetGlobalTimer("DMWWBalCallsMel","GLOBAL",18)
SetGlobal("BalthazarFights","GLOBAL",1)
EscapeArea()~ EXIT END
END

REPLACE_STATE_TRIGGER balth 12 ~Global("HadBhaal25Dream3","GLOBAL",1)Global("HadBhaal25Dream5","GLOBAL",0)Dead("abazigal")Dead("sendai")!Dead("dw#melis")!Global("DMWWBvMEnd","GLOBAL",2)~