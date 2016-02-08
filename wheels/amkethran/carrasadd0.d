ALTER_TRANS amcarras 
BEGIN 11 END
BEGIN 2 END
BEGIN
"TRIGGER" ~!Dead("dw#melis")~
END

ALTER_TRANS amcarras 
BEGIN 11 END
BEGIN 3 END
BEGIN
"TRIGGER" ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
END

ALTER_TRANS amcarras 
BEGIN 21 END
BEGIN 3 END
BEGIN
"TRIGGER" ~Global("metbal","GLOBAL",0)
!Dead("dw#melis")~
END

ALTER_TRANS amcarras 
BEGIN 23 END
BEGIN 3 END
BEGIN
"TRIGGER" ~!Dead("dw#melis")~
END

ALTER_TRANS amcarras 
BEGIN 24 END
BEGIN 2 END
BEGIN
"TRIGGER" ~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
END
