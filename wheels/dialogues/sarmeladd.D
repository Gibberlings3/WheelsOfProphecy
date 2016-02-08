EXTEND_BOTTOM sarmel01 64
IF ~~ THEN REPLY @0 GOTO accusemel
END

EXTEND_BOTTOM sarmel01 66
IF ~~ THEN REPLY @1 GOTO 67
END

EXTEND_BOTTOM sarmel01 69 70 71 72 73
IF ~~ THEN REPLY @2 GOTO accusemelagain
END

ADD_TRANS_TRIGGER sarmel01 82 ~False()~

EXTEND_BOTTOM sarmel01 82
IF ~~ THEN REPLY @3 GOTO 83
IF ~~ THEN REPLY @4 GOTO 83
IF ~~ THEN REPLY @5 GOTO amkethran_nochoice
IF ~~ THEN REPLY @6 GOTO amkethran_threat
END

APPEND sarmel01 

IF ~~ THEN BEGIN accusemel
SAY @7
IF ~~ THEN REPLY @8 GOTO accusemel2
END

IF ~~ THEN BEGIN accusemel2
SAY @9
IF ~~ THEN REPLY @10 GOTO climbdown
IF ~~ THEN REPLY @11 GOTO nottrusted
IF ~~ THEN REPLY @12 DO ~SetGlobal("DMWWtiming","LOCALS",1)~ GOTO isthatall
IF ~~ THEN REPLY @13 DO ~SetGlobal("DMWWprophecy","LOCALS",1)~ GOTO prophecy
IF ~Gender(Player1,Female)~ THEN REPLY @14 GOTO intuition
END

IF ~~ THEN BEGIN accusemelagain
SAY @15
IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN climbdown
SAY @16
IF ~~ THEN GOTO 66
END


IF ~~ THEN BEGIN nottrusted
SAY @17
IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN isthatall
SAY @18
IF ~~ THEN REPLY @19 GOTO climbdown
IF ~~ THEN REPLY @20 GOTO nottrusted
IF ~!Global("DMWWprophecy","LOCALS",1)~ THEN REPLY @21 DO ~SetGlobal("DMWWProphecy","LOCALS",1)~ GOTO prophecy
IF ~~ THEN REPLY @22 GOTO nochoice
END

IF ~~ THEN BEGIN intuition
SAY @23
IF ~~ THEN REPLY @19 GOTO climbdown
IF ~~ THEN REPLY @20 GOTO nottrusted
IF ~!Global("DMWWtiming","LOCALS",1)~ THEN REPLY @24 DO ~SetGlobal("DMWWProphecy","LOCALS",1)~ GOTO isthatall
IF ~!Global("DMWWprophecy","LOCALS",1)~ THEN REPLY @25 DO ~SetGlobal("DMWWprophecy","LOCALS",1)~ GOTO prophecy
IF ~~ THEN REPLY @26 GOTO nochoice
END

IF ~~ THEN BEGIN prophecy
SAY @27
IF ~OR(5)
InParty("sarevok")
InParty("imoen2")
InParty("korgan")
InParty("edwin")
InParty("viconia")~
THEN GOTO accuseallies
IF ~
!InParty("sarevok")
!InParty("imoen2")
!InParty("korgan")
!InParty("edwin")
!InParty("viconia")
~ THEN GOTO prophecyend
END

IF ~~ THEN BEGIN accuseallies
SAY @28
IF ~InParty("sarevok")~ THEN GOTO sarevok
IF ~!InParty("sarevok")InParty("imoen2")~ THEN GOTO imoen
IF ~!InParty("sarevok")!InParty("imoen2")InParty("korgan")~ THEN GOTO korgan
IF ~!InParty("sarevok")!InParty("imoen2")!InParty("korgan")InParty("edwin")~ THEN GOTO edwin
IF ~!InParty("sarevok")!InParty("imoen2")!InParty("korgan")!InParty("edwin")InParty("viconia")~ THEN GOTO viconia
END

IF ~~ THEN BEGIN sarevok
SAY @29
IF ~~ THEN EXTERN sarev25j sarevokreply
END

IF ~~ THEN BEGIN imoen
SAY @30
=@31
IF ~~ THEN EXTERN imoen25j imoenreply
END

IF ~~ THEN BEGIN korgan
SAY @32
IF ~~ THEN EXTERN korga25j korganreply
END

IF ~~ THEN BEGIN edwin
SAY @33
IF ~~ THEN EXTERN edwin25j edwinreply
END

IF ~~ THEN BEGIN viconia
SAY @34
IF ~~ THEN EXTERN vicon25j viconiareply
END

IF ~~ THEN BEGIN imoencomeback
SAY @35
IF ~InParty("korgan")~ THEN GOTO korgan
IF ~!InParty("korgan")InParty("edwin")~ THEN GOTO edwin
IF ~!InParty("korgan")!InParty("edwin")InParty("viconia")~ THEN GOTO viconia
IF ~!InParty("korgan")!InParty("edwin")!InParty("viconia")~ THEN GOTO prophecyend
END

IF ~~ THEN BEGIN prophecyend
SAY @36
IF ~~ THEN REPLY @19 GOTO climbdown
IF ~~ THEN REPLY @20 GOTO nottrusted
IF ~!Global("DMWWtiming","LOCALS",1)~ THEN REPLY @24 DO ~SetGlobal("DMWWProphecy","LOCALS",1)~ GOTO isthatall
IF ~~ THEN REPLY @37 GOTO nochoice
END

IF ~~ THEN BEGIN nochoice
SAY @38
=
@39
IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN amkethran_nochoice
SAY @40
IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN amkethran_threat
SAY @41
  IF ~~ THEN DO ~AddXP2DA("Plot9A")
SetGlobal("SaradushSacked","GLOBAL",1)
RevealAreaOnMap("AR5500")
RevealAreaOnMap("AR6300")
ReallyForceSpell(Myself,POOF_GONE)
DialogInterrupt(FALSE)
~ UNSOLVED_JOURNAL #66357
EXIT 
END


END

APPEND sarev25j

IF ~~ THEN BEGIN sarevokreply
SAY @42
IF ~InParty("imoen2")~ THEN EXTERN sarmel01 imoen
IF ~!InParty("imoen2")InParty("korgan")~ THEN EXTERN sarmel01 korgan
IF ~!InParty("imoen2")!InParty("korgan")InParty("edwin")~ THEN EXTERN sarmel01 edwin
IF ~!InParty("imoen2")!InParty("korgan")!InParty("edwin")InParty("viconia")~ THEN EXTERN sarmel01 viconia
IF ~!InParty("imoen2")!InParty("korgan")!InParty("edwin")!InParty("viconia")~ THEN EXTERN sarmel01 prophecyend
END
END

APPEND imoen25j

IF ~~ THEN BEGIN imoenreply
SAY @43
IF ~~ THEN EXTERN sarmel01 imoencomeback
END

END

APPEND korga25j

IF ~~ THEN BEGIN korganreply
SAY @44
IF ~InParty("edwin")~ THEN EXTERN sarmel01 edwin
IF ~!InParty("edwin")InParty("viconia")~ THEN EXTERN sarmel01 viconia
IF ~!InParty("edwin")!InParty("viconia")~ THEN EXTERN sarmel01 prophecyend
END

END

APPEND edwin25j

IF ~~ THEN BEGIN edwinreply
SAY @45
IF ~InParty("viconia")~ THEN EXTERN sarmel01 viconia
IF ~!InParty("viconia")~ THEN EXTERN sarmel01 prophecyend
END

END

APPEND vicon25j

IF ~~ THEN BEGIN viconiareply
SAY @46
IF ~~ THEN EXTERN sarmel01 prophecyend
END

END
