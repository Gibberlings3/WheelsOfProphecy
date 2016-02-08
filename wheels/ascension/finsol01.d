///////////////////////////////////////////////////////////////////////
// Ascension : FINSOL01 
///////////////////////////////////////////////////////////////////////
// (1) Changes Player1's responses for states 4 and 33
// (2) Appends states 34 -- 40. 
// (3) Replaces states 0--2 so that they correctly link up to FINMEL01
///////////////////////////////////////////////////////////////////////

REPLACE FINSOL01
  IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
    SAY #67810 /* ~Enough, Amelyssan.  The gods have decreed: this contest is over.~ [SOLAR74] */
    IF ~~ THEN EXTERN ~FINMEL01~ 11
  END

  IF ~~ THEN BEGIN 1 // from:
    SAY #67812 /* ~You are no god, priestess of Bhaal.  You play with stolen energies that make you immortal, that give you great power...but that does not make you a god.~ [SOLAR75] */
    IF ~~ THEN EXTERN ~FINMEL01~ 12
  END

  IF ~~ THEN BEGIN 2 // from:
    SAY #67814 /* ~But you cannot die, so long as the essences are within you.  Even now, however, they struggle to flee from your weakened frame.  You are defeated, and destiny belongs to the victor.~ [SOLAR76] */
    IF ~~ THEN EXTERN ~FINMEL01~ 13
  END

  IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 4 // from:
    SAY #67817
    IF ~OR(2)
  !InParty("Imoen2")
  Dead("Imoen2")
  Global("BalthazarFights","GLOBAL",0)
  !Global("BodhiFights","GLOBAL",1)~ THEN GOTO 5
    IF ~InParty("Imoen2")
  !Dead("Imoen2")
  Global("BalthazarFights","GLOBAL",0)
  !Global("BodhiFights","GLOBAL",1)~ THEN GOTO 6
    IF ~OR(2)
  !InParty("Imoen2")
  Dead("Imoen2")
  Global("BalthazarFights","GLOBAL",1)
  !Global("BodhiFights","GLOBAL",1)~ THEN GOTO a34
    IF ~InParty("Imoen2")
  !Dead("Imoen2")
  Global("BalthazarFights","GLOBAL",1)
  !Global("BodhiFights","GLOBAL",1)~ THEN GOTO a35
  END

  IF ~~ THEN BEGIN 33 // from: BALTH2:15.0 BALTH2:14.0 32.0 31.0 30.0 29.0 IMOEN25J:20.0 IMOEN25J:18.0 SAREV25J:7.0 SAREV25J:6.0 SAREV25J:5.0 SAREV25J:4.0
    SAY #68097
    IF ~GlobalLT("PPEvilChoices","GLOBAL",3)
  Global("PlayerChoseEssence","GLOBAL",1)
  ~ THEN DO ~ClearAllActions()
  StartCutSceneMode()
  StartCutScene("cut233i")
  ~ EXIT
    IF ~GlobalGT("PPEvilChoices","GLOBAL",2)
  Global("PlayerChoseEssence","GLOBAL",1)
  ~ THEN DO ~ClearAllActions()
  StartCutSceneMode()
  StartCutScene("cut233i2")
  ~ EXIT
    IF ~Global("PlayerChoseEssence","GLOBAL",0)
  ~ THEN DO ~ClearAllActions()
  StartCutSceneMode()
  StartCutScene("cut233i3")
  ~ EXIT
  END
END

EXTEND_BOTTOM FINSOL01 27 
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN EXTERN ~BALTH2~ a10
END

EXTEND_BOTTOM FINSOL01 29 30 31
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN EXTERN ~BALTH2~ a15
END

EXTEND_BOTTOM FINSOL01 32 
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN EXTERN ~BALTH2~ a14
END

APPEND FINSOL01

IF ~~ THEN BEGIN a34 // from: 4.2
  SAY @580 /* ~Only one other spawn of the dead god remains...the sibling who fought at your side.  His portion of the essence is less than your own, but still significant.  His choice must also be made.~ #80523 */
  IF ~~ THEN EXTERN ~BALTH2~ a7
END

IF ~~ THEN BEGIN a35 // from: 4.3
  SAY @581 /* ~First, however, there is the matter of the children of the dead god who fought by your side.  Their essences are less than your own, but their decision no less important.~ #80524 */
  IF ~~ THEN EXTERN ~BALTH2~ a7
END

IF ~~ THEN BEGIN a36 // from: BALTH2:7.0
  SAY @582 /* ~I am merely an agent of the universe in this matter, Balthazar.  I am charged to see the destiny of the children of Bhaal brought to its conclusion.  You have an opportunity that few are given.  You may choose your destiny...a choice you thought yourself forever denied.~ #80526 */
  IF ~~ THEN EXTERN ~BALTH2~ a8
END

IF ~~ THEN BEGIN a37 // from: BALTH2:8.0
  SAY @583 /* ~If that is your choice, you may surrender the portion of your divine essence to your elder sibling.  You may become a normal mortal, with a destiny to follow as you see fit.~ #80528 */
  IF ~~ THEN EXTERN ~BALTH2~ a9
END

IF ~~ THEN BEGIN a38 // from: BALTH2:9.0
  SAY @584 /* ~As you wish, Balthazar, so it is done.  Go in peace, and know that in the end you walked that narrow path which had ever eluded you.~ #80530 */
  IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN GOTO a39
  IF ~OR(2)
!InParty("Imoen2")
Dead("Imoen2")~ THEN GOTO 5
END

IF ~~ THEN BEGIN a39 // from: 38.0
  SAY @585 /* ~Now there is but one other sibling who must also make her choice.~ #80531 */
  IF ~~ THEN EXTERN ~IMOEN25J~ 14
END


END /* end of APPEND FINSOL01 */
