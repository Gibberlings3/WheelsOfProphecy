// creator  : weidu (version 24600)
// argument : BALTH.DLG
// game     : .
// source   : ./DATA/25DIALOG.BIF
// dialog   : .\dialog.tlk
// dialogF  : (none)

BEGIN ~BALTH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~Global("METBAL","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY #66489 /* ~So.  You must be the Bhaalspawn Melissan told me of.  I have been expecting you.~ [BALTHA07] */
  IF ~~ THEN REPLY #66490 /* ~How do you know who I am?~ */ DO ~SetGlobal("METBAL","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY #66491 /* ~Where is Melissan?  I need to speak with her.~ */ DO ~SetGlobal("METBAL","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY #66492 /* ~Yes, I am <PRO_HESHE>.~ */ DO ~SetGlobal("METBAL","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1 0.0
  SAY #66493 /* ~I am Balthazar, head of the monastic order here in Amkethran and its ruler, as well, although that is not an official position.  Melissan preceded you and told me of your coming.~ [BALTHA08] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66494 /* ~Melissan has already left the village, and did not say where she was going.  She has left with me directions for you to reach these...enclaves...she mentioned.  Is this what you expected?~ [BALTHA09] */
  IF ~~ THEN REPLY #66495 /* ~No.  She said she would meet me here.~ */ GOTO 4
  IF ~~ THEN REPLY #66496 /* ~She mentioned you...I appreciate your help.~ */ GOTO 5
  IF ~~ THEN REPLY #66497 /* ~How can I trust you to give me proper information?  I know nothing about you.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #66498 /* ~And I know little enough of you, Bhaalspawn.  Melissan has vouched for you, however, so I'll tolerate your presence and give you what you need.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #66499 /* ~I do not know where Melissan may have gone, nor do I care.  As for you, Melissan has vouched for you...I'll tolerate your presence, for now, and give you what you need.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #66500 /* ~Melissan has vouched for you, <CHARNAME>.  As far as that goes, I will tolerate your presence and give you the information that Melissan asked me to.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 4.0 3.0
  SAY #66501 /* ~Here are the maps to the enclaves Melissan mentioned.  Neither of them are very far from here, as you can see...add them to your own map, if you wish.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("AR6000")
RevealAreaOnMap("AR6100")~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66502 /* ~Do with them as you wish, <CHARNAME>.  Amkethran is available for your supplies and rest...do not disturb my own activities and we'll not come to grief, is that understood?~ */
  IF ~~ THEN REPLY #66503 /* ~What sort of activities are you talking about?~ */ GOTO 8
  IF ~~ THEN REPLY #66504 /* ~I was expecting someone a little...friendlier.~ */ GOTO 9
  IF ~~ THEN REPLY #66505 /* ~Do not threaten me, Balthazar.~ */ GOTO 10
  IF ~~ THEN REPLY #66506 /* ~Fair enough...it's your town, after all.~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #66507 /* ~That's none of your business.  You'll not be allowed into my fortress...anywhere else is open to you.  Good day and good luck to you, <CHARNAME>.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutamk02")~ UNSOLVED_JOURNAL #73859 /* ~Meeting with Balthazar

I have finally met with Balthazar, the head of the monastic order in Amkethran, and while he was not exactly welcoming he did allow me to remain in the town so long as I did not attempt to enter the monastery or otherwise interfere in his business...and passed on to me the maps to the Bhaalspawn enclaves that Melissan presumably gave him.

Where Melissan is, now, appears to be a mystery.  I am not entirely certain that this Balthazar is on the level.  Regardless, there is no reason for me to try to get inside his fortress-like monastery and no way that I can see of doing so.  My only path is to investigate the enclaves and confront the Bhaalspawn who are so intent on hunting me.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #66508 /* ~Considering what happened to Saradush, be thankful you find welcome anywhere.  You may not enter my fortress while you are here, <CHARNAME>. Elsewhere is open to you.  Good luck.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutamk02")~ UNSOLVED_JOURNAL #73859 /* ~Meeting with Balthazar

I have finally met with Balthazar, the head of the monastic order in Amkethran, and while he was not exactly welcoming he did allow me to remain in the town so long as I did not attempt to enter the monastery or otherwise interfere in his business...and passed on to me the maps to the Bhaalspawn enclaves that Melissan presumably gave him.

Where Melissan is, now, appears to be a mystery.  I am not entirely certain that this Balthazar is on the level.  Regardless, there is no reason for me to try to get inside his fortress-like monastery and no way that I can see of doing so.  My only path is to investigate the enclaves and confront the Bhaalspawn who are so intent on hunting me.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #66509 /* ~It is not a threat, it is a warning.  My own fortress, here, is off limits to you.  Everywhere else in Amkethran you may enter.  Good day and good luck, <CHARNAME>.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutamk02")~ UNSOLVED_JOURNAL #73859 /* ~Meeting with Balthazar

I have finally met with Balthazar, the head of the monastic order in Amkethran, and while he was not exactly welcoming he did allow me to remain in the town so long as I did not attempt to enter the monastery or otherwise interfere in his business...and passed on to me the maps to the Bhaalspawn enclaves that Melissan presumably gave him.

Where Melissan is, now, appears to be a mystery.  I am not entirely certain that this Balthazar is on the level.  Regardless, there is no reason for me to try to get inside his fortress-like monastery and no way that I can see of doing so.  My only path is to investigate the enclaves and confront the Bhaalspawn who are so intent on hunting me.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #66510 /* ~Thank you.  Do not enter my fortress, <CHARNAME>...you will be denied entry.  Everywhere else is open to you.  Good day and good luck.~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cutamk02")~ UNSOLVED_JOURNAL #73859 /* ~Meeting with Balthazar

I have finally met with Balthazar, the head of the monastic order in Amkethran, and while he was not exactly welcoming he did allow me to remain in the town so long as I did not attempt to enter the monastery or otherwise interfere in his business...and passed on to me the maps to the Bhaalspawn enclaves that Melissan presumably gave him.

Where Melissan is, now, appears to be a mystery.  I am not entirely certain that this Balthazar is on the level.  Regardless, there is no reason for me to try to get inside his fortress-like monastery and no way that I can see of doing so.  My only path is to investigate the enclaves and confront the Bhaalspawn who are so intent on hunting me.~ */ EXIT
END

IF WEIGHT #0 ~OR(2)
Global("Enclave","GLOBAL",2)
Global("METBAL","GLOBAL",1)~ THEN BEGIN 12 // from:
  SAY #67694 /* ~Ah, <CHARNAME>... your presence here shows me how foolish I have been in gathering my army of mercenaries.  I truly regret my wasted efforts at the expense of Amkethran's citizens.~ [BALTHA10] */
  IF ~~ THEN REPLY #67695 /* ~I demand to know where Melissan is!~ */ GOTO 13
  IF ~~ THEN REPLY #67696 /* ~I know your secret, Balthazar.  You were working with Abazigal and Sendai!~ */ GOTO 15
  IF ~~ THEN REPLY #67697 /* ~I am the child of a God!  Did you really think your pathetic army could stop me?~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #67698 /* ~I assure you, the Lady Melissan is not here.  We had a... disagreement from which she hastily departed.  I shall deal with her once my business with you is finished.~ */
  IF ~~ THEN REPLY #67699 /* ~Save your lies!  I know you were working with Abazigal and Sendai.~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #67700 /* ~No, in truth I had other plans for my army.  But since you killed Abazigal and Sendai, I have no further need of these mercenaries who so drain the monastery's treasury.  ~ */
  IF ~~ THEN REPLY #67701 /* ~Spare me your lies... I know you were working with Abazigal and Sendai.~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 13.0 12.1
  SAY #67702 /* ~I suppose it may have appeared as such, though in truth I have plotted their destruction ever since Melissan recruited me into the Five.~ */
  IF ~~ THEN REPLY #67703 /* ~What kind of lies are you spinning now?~ */ GOTO 16
  IF ~~ THEN REPLY #67705 /* ~Are you saying Melissan is the leader of the Five?~ */ GOTO 17
  IF ~~ THEN REPLY #67706 /* ~Are you trying to tell me that you are one of the Five?  A Bhaalspawn?~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #67704 /* ~Look beyond the surface, <CHARNAME>.  The truth lies buried deep - as it often does when dealing with those of Bhaal's treacherous blood.~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 15.2 15.1
  SAY #67707 /* ~Melissan recognized the taint of Bhaal within me, just as she recognized it in Sendai, Abazigal and the others.  Just as she recognized it in you.~ [BALTHA11] */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #67708 /* ~She lured me with promises of power and glory, but I followed her for a different reason.  Only by joining the Five could I discover who the others were - and plot their demise.~ [BALTHA12] */
  IF ~~ THEN REPLY #67709 /* ~So you used me to betray the other Bhaalspawn for your own goals.~ */ GOTO 19
  IF ~~ THEN REPLY #67710 /* ~I guess by killing your "allies" I have done your dirty work for you.~ */ GOTO 19
  IF ~~ THEN REPLY #67711 /* ~You mean you manipulated me, used me as a tool against the other Bhaalspawn.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.2 18.1 18.0
  SAY #67712 /* ~I wish I could take the credit for this brilliant ruse, <CHARNAME>.  But it seems I was not the only member of the Five who plotted the downfall of the others.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #67713 /* ~Melissan is the puppet master pulling your strings in this staged production.  I have merely tried to stay out of your path for as long as possible, anxious to see if you would prevail.~ [BALTHA13] */
  IF ~~ THEN REPLY #67714 /* ~This is all just an elaborate lie - I don't believe you!~ */ GOTO 21
  IF ~~ THEN REPLY #67715 /* ~Why would Melissan have gathered the Five only to plot their destruction?~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1 20.0
  SAY #67716 /* ~It matters not, <CHARNAME>.  In the end both Melissan and I have what we want: the other members of the Five are dead, though she and I remain at odds.~ */
  IF ~~ THEN REPLY #67717 /* ~And now I suppose you plan to kill me so you can resurrect Bhaal all by yourself?~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #67724 /* ~Oh no, <CHARNAME>.  I have no such designs.  Bhaal's taint is an evil blight upon the world.  I have no intention of bringing the Lord of Murder back into existence.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #67725 /* ~My plan is much more altruistic.  I have vowed to exterminate all of Bhaal's children, forever wiping the Realms clean of his tainted existence.  You have merely helped me in my goal.~ */
  IF ~~ THEN REPLY #67726 /* ~But you are a Child of Bhaal as well - what happens to you?~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #67727 /* ~Once I am certain I am the last, once I know there are no others, I will perform a ritual suicide.  Bhaal's evil will die with me.  But first, I must end your evil existence.~ [BALTHA14] */
  IF ~ReputationGT(Player1,12)
~ THEN REPLY #67728 /* ~But I am not evil!  I am a force of good and justice!~ */ GOTO 26
  IF ~ReputationGT(Player1,7)
ReputationLT(Player1,13)
~ THEN REPLY #67729 /* ~But I am not evil!  I am a force of good and justice!~ */ GOTO 28
  IF ~ReputationLT(Player1,8)
~ THEN REPLY #67730 /* ~But I am not evil!  I am a force of good and justice!~ */ GOTO 27
  IF ~~ THEN REPLY #67731 /* ~You sound like a hypocrite to me, sentencing those you have no right to judge!~ */ GOTO 28
  IF ~~ THEN REPLY #67732 /* ~You won't be the first to try and kill me... and probably not the last.~ */ GOTO 28
  IF ~~ THEN REPLY #67733 /* ~How noble.  I'll enjoy spilling your pretentious guts all over the floor.~ */ GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 30.2 30.1 30.0
  SAY #67734 /* ~Further conversation is pointless, <CHARNAME>.  I have a task which I must complete.  Your death is a necessity, Bhaalspawn.~ [BALTHA17] */
  IF ~~ THEN DO ~Shout(ALERT)
Enemy()
EraseJournalEntry(67720)
EraseJournalEntry(67721)
EraseJournalEntry(67722)
EraseJournalEntry(67723)
EraseJournalEntry(66357)~ SOLVED_JOURNAL #67747 /* ~Assault on the Enclaves

Balthazar revealed himself as a Bhaalspawn, and one of the Five - though he never shared their goal of resurrecting Bhaal.  The mad monk wanted to wipe the taint of Bhaal from the world by killing all of Bhaal's children, including himself.
More disturbing were the implications he leveled at the still absent Melissan.  If his words are true, she has been manipulating me the entire time for her own nefarious purposes.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY #67735 /* ~People sing the praises of your name, <CHARNAME>.  You strive to walk the path of virtue.  But your intentions are meaningless compared to the consequences of your existence.  ~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #67736 /* ~Your lies are not surprising.  You infamy preceeds you, <CHARNAME>.  All know you are a scourge upon the earth... your name is whispered with fear and dread.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 26.0 24.5 24.4 24.3 24.1
  SAY #67737 /* ~How many bodies have you left in your wake?  Hundreds?  Thousands?  Saradush is a smoking waste... how many other cities and towns have you brought destruction raining down upon?~ [BALTHA15] */
  IF ~~ THEN REPLY #67738 /* ~But it wasn't my fault!  I'm a victim of circumstance!~ */ GOTO 29
  IF ~~ THEN REPLY #67739 /* ~I can explain everything, if you give me a chance.~ */ GOTO 29
  IF ~~ THEN REPLY #67740 /* ~And how many corpses have you left behind, Balthazar?~ */ GOTO 29
  IF ~~ THEN REPLY #67741 /* ~I bring destruction wherever I go, and I revel in the blood!  I am death incarnate!~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3 28.2 28.1 28.0
  SAY #67742 /* ~I am much the same, <CHARNAME>.  Our mere presence brings death... it is inevitable.  It is our destiny.  We are not to blame, we are slaves to our father's tainted blood.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #67743 /* ~And as your power grows, <CHARNAME>, so shall the ruin sown in your passing.  Kingdoms will fall, and the rivers of Faerun will run with blood.  ~ [BALTHA16] */
  IF ~~ THEN REPLY #67744 /* ~No, I do not accept this destiny you are laying on me!~ */ GOTO 25
  IF ~~ THEN REPLY #67745 /* ~You condemn me based on my possible future?  That is not justice.~ */ GOTO 25
  IF ~~ THEN REPLY #67746 /* ~I like the sound of that!~ */ GOTO 25
END
