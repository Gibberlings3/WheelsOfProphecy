///////////////////////////////////////////////////////////////////////
// Ascension : BALTH2 
///////////////////////////////////////////////////////////////////////
// (1) Created from scratch (not in the original game). 
///////////////////////////////////////////////////////////////////////

BEGIN ~BALTH2~

IF ~False()~ THEN BEGIN a7 // from: FINSOL01:35.0 FINSOL01:34.0
  SAY @1009 /* ~You...you are so beautiful.  I...had no idea...~ #80525 */
  IF ~~ THEN EXTERN ~FINSOL01~ a36
END

IF ~False()~ THEN BEGIN a8 // from: FINSOL01:36.0
  SAY @1010 /* ~Choose?  You mean...I may rid myself of the taint on my soul forever?~ #80527 */
  IF ~~ THEN EXTERN ~FINSOL01~ a37
END

IF ~False()~ THEN BEGIN a9 // from: FINSOL01:37.0
  SAY @1011 /* ~And there is nothing that I ever wanted more.  I choose to become a mortal gladly, and with all my heart.  To walk the earth without that dark burden twisting my soul...I...I cannot even imagine...~ #80529 */
  IF ~~ THEN EXTERN ~FINSOL01~ a38
END

IF ~False()~ THEN BEGIN a10 // from: FINSOL01:27.23
  SAY @1012 /* ~I cannot thank you enough, <CHARNAME>, for the gift you have given me.  I once thought I had done everything I could to fight for what was good...but it was you that showed me how wrong I was.  Without you, I would have died with that stain upon my soul and perhaps even been Melissan's puppet forever.~ #80532 */
  IF ~~ THEN GOTO a11
END

IF ~~ THEN BEGIN a11 // from: 10.0
  SAY @1013 /* ~I cannot pretend to know what you are thinking, now, of the decision you must make.  Nor do I pretend to certainty that the taint would bring such a <PRO_MANWOMAN> such as yourself towards evil.  Perhaps you would overcome that taint and be a good god, I cannot say.~ #80533 */
  IF ~~ THEN GOTO a12
END

IF ~~ THEN BEGIN a12 // from: 11.0
  SAY @1014 /* ~I just ask you to consider how Bhaal's taint has affected your life to this point.  Do you really wish to have all of it?  What type of person actually wishes to become a god?  Sarevok?  Irenicus?  Melissan?  Even if your intentions are good, what of an eternity being chained to such power?~ #80534 */
  IF ~~ THEN GOTO a13
END

IF ~~ THEN BEGIN a13 // from: 12.0
  SAY @1015 /* ~The choice is your own.  You know yourself better than I.  I simply ask that you consider the life you might have led, the mortal life, had the taint never visited itself upon you back at Candlekeep.  I look forward to my own.~ #80535 */
  COPY_TRANS FINSOL01 27
END

IF ~False()~ THEN BEGIN a14 // from: FINSOL01:32.9
  SAY @1016 /* ~And so it is done.  I believe you have made the right choice.  I look forward to meeting you again on Faerun, <CHARNAME>...as a mortal and a true <PRO_BROTHERSISTER>.~ #80544 */
  COPY_TRANS FINSOL01 32
END

IF ~False()~ THEN BEGIN a15 // from: FINSOL01:31.9 FINSOL01:30.9 FINSOL01:29.9
  SAY @1017 /* ~And so you take the road less traveled, <CHARNAME>.  I cannot say I envy you.  I hope the power brings you what you expect and desire, my friend.  When I look up at the heavens and see the brightest star in the sky, I shall think of you and offer a prayer.~ #80537 */
  COPY_TRANS FINSOL01 29
END

