APPEND "%thismonkdialog%"

IF WEIGHT #-20
~RandomNum(4,1)Global("BalthazarFights","GLOBAL",1)~
THEN BEGIN nice1
SAY @3170
IF ~~ THEN EXIT END

IF WEIGHT #-20
~RandomNum(4,2)Global("BalthazarFights","GLOBAL",1)~
THEN BEGIN nice2
SAY @3171
IF ~~ THEN EXIT END

IF WEIGHT #-20
~RandomNum(4,3)Global("BalthazarFights","GLOBAL",1)~
THEN BEGIN nice3
SAY @3172
IF ~~ THEN EXIT END

IF WEIGHT #-20
~RandomNum(4,4)Global("BalthazarFights","GLOBAL",1)~
THEN BEGIN nice4
SAY @3173
IF ~~ THEN EXIT END

END