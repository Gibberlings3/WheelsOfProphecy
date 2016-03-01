BEGIN ~head1~ 
  IF ~Global("Chapter","GLOBAL",%bg2_chapter_9%)~ Head1_ch9
SAY @0
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("dw#whd03")~ EXIT
END

  IF WEIGHT #-2 ~!Global("Chapter","GLOBAL",%bg2_chapter_9%)~ Head1
    SAY @1
    IF ~~ THEN REPLY @2 GOTO Head1_1
    IF ~~ THEN REPLY @3 GOTO Head1_2
    IF ~~ THEN REPLY @4 GOTO Head1_3
    IF ~~ THEN REPLY @5 GOTO Head1_4
  END
  
  IF ~~ Head1_1
    SAY @6
    IF ~~ THEN REPLY @3 GOTO Head1_2
    IF ~~ THEN REPLY @7 GOTO Head1_3
    IF ~~ THEN REPLY @5 GOTO Head1_4
    IF ~~ THEN REPLY @8  DO ~StartCutSceneMode() StartCutScene("dw#whd01")~ EXIT
  END
  
  IF ~~ Head1_2
    SAY @9
    IF ~~ THEN REPLY @2 GOTO Head1_1
    IF ~~ THEN REPLY @7 GOTO Head1_3
    IF ~~ THEN REPLY @5 GOTO Head1_4
    IF ~~ THEN REPLY @10  DO ~StartCutSceneMode() StartCutScene("dw#whd01")~ EXIT
  END

  IF ~~ Head1_3
    SAY @11
    IF ~~ THEN REPLY @12 GOTO Head1_1
    IF ~~ THEN REPLY @3 GOTO Head1_2
    IF ~~ THEN REPLY @5 GOTO Head1_4
    IF ~~ THEN REPLY @10  DO ~StartCutSceneMode() StartCutScene("dw#whd01")~ EXIT
  END
  
  IF ~~ Head1_4
    SAY @13
    IF ~~ THEN REPLY @12 GOTO Head1_1
    IF ~~ THEN REPLY @3 GOTO Head1_2
    IF ~~ THEN REPLY @14 GOTO Head1_3
    IF ~~ THEN REPLY @8 DO ~StartCutSceneMode() StartCutScene("dw#whd01")~ EXIT  END

BEGIN ~HEAD2~

IF WEIGHT #-2 ~!Global("Chapter","GLOBAL",%bg2_chapter_9%)~ Head2
    SAY @15
    = @16
    = @17
IF ~OR(2) !Global("DW#Head3","AR4000",1) !Global("DW#Head4","AR4000",1)~ THEN GOTO head2_teaser
IF ~Global("DW#Head3","AR4000",1) Global("DW#Head4","AR4000",1)~  DO ~StartCutSceneMode() StartCutScene("Cut204e")~ EXIT
END

IF ~~ THEN BEGIN head2_teaser
SAY @18
    IF ~~ THEN DO ~AmbientActivate("AMB_Head2L",FALSE)AmbientActivate("AMB_Head2R",FALSE)~ EXIT
  END

BEGIN ~HEAD3~

  IF ~Global("Chapter","GLOBAL",%bg2_chapter_9%)~ Head3_ch9
SAY @19 
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("dw#whd04")~ EXIT
END

  IF WEIGHT #-2 ~!Global("Chapter","GLOBAL",%bg2_chapter_9%)~ Head3
    SAY @20
    = @21
    = @22
IF ~OR(2) !Global("DW#Head2","AR4000",1) !Global("DW#Head4","AR4000",1)~ THEN GOTO head3_teaser
IF ~Global("DW#Head2","AR4000",1) Global("DW#Head4","AR4000",1)~  DO ~StartCutSceneMode() StartCutScene("Cut204e")~ EXIT
END

IF ~~ THEN BEGIN head3_teaser
SAY @23
    IF ~~ THEN DO ~AmbientActivate("AMB_Head3L",FALSE)AmbientActivate("AMB_Head3R",FALSE)~ EXIT
END

BEGIN ~HEAD4~
  
IF ~Global("Chapter","GLOBAL",%bg2_chapter_9%)~ Head4_ch9
SAY @24
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("dw#whd05")~ EXIT
END

  IF WEIGHT #-2 ~!Global("Chapter","GLOBAL",%bg2_chapter_9%)~ Head4
    SAY @25
    = @26
IF ~OR(2) !Global("DW#Head2","AR4000",1) !Global("DW#Head3","AR4000",1)~ THEN GOTO head4_teaser
IF ~Global("DW#Head2","AR4000",1) Global("DW#Head3","AR4000",1)~  DO ~StartCutSceneMode() StartCutScene("Cut204e")~ EXIT
END

IF ~~ THEN BEGIN head4_teaser
SAY @27
    IF ~~ THEN DO ~AmbientActivate("AMB_Head4L",FALSE)AmbientActivate("AMB_Head4R",FALSE)~ EXIT
  END

BEGIN ~HEAD5~

IF ~Global("Chapter","GLOBAL",%bg2_chapter_9%)~ Head5_ch9
SAY @28
IF ~~ THEN DO ~SetGlobal("HadBhaal25Dream5","GLOBAL",1)StartCutSceneMode() StartCutScene("cut243a")~ EXIT
END

  IF WEIGHT #-2 ~!Global("Chapter","GLOBAL",%bg2_chapter_9%)~ Head5
    SAY @29
    = @30
    = @31
    = @32
    IF ~~ DO ~SetGlobalTimer("IllaseraSpawnTimer","GLOBAL",30) AddXP2DA("Heads") StartCutSceneMode() StartCutScene("Cut204g")~ EXIT
  END



