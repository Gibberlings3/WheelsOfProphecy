// ONLY RELEVANT if Ascension not installed - it covers Balthazar's arrival at the Throne of Bhaal


CHAIN 
IF ~~ THEN finmel01 greet_balth
@0
== balth2
@1
== finmel01
@2
== balth2
@3
== finmel01
@4
END
  IF ~~ THEN REPLY #67792 /* ~You stole something that isn't yours to begin with, Melissan!~ */ EXTERN finmel01 2
  IF ~~ THEN REPLY #67793 /* ~You don't have all the essence of Bhaal... and you don't rule here alone.~ */ EXTERN finmel01 3
  IF ~~ THEN REPLY #67794 /* ~You manipulated me, you deceitful harpy...and you will pay!~ */ EXTERN finmel01 4
  IF ~~ THEN REPLY #67795 /* ~You should have remained true to Bhaal...only he could have saved you, now!~ */ EXTERN finmel01 4
  IF ~~ THEN REPLY #67796 /* ~I will stop you, Melissan.  Any way I can.~ */ EXTERN finmel01 4
  IF ~~ THEN REPLY #67797 /* ~Yeah, well, I suppose everybody has a dream.  Psycho.~ */ EXTERN finmel01 4

ADD_TRANS_TRIGGER finmel01 0 ~Global("BalthazarFights","GLOBAL",0)~

EXTEND_BOTTOM finmel01 0
IF ~Global("BalthazarFights","GLOBAL",1)~ THEN DO ~SetGlobal("FinalFight","AR6200",1)~ GOTO greet_balth
END
