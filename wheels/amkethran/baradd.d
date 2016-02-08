ALTER_TRANS ambar01
BEGIN 3 21 END
BEGIN 0 4 END
BEGIN "TRIGGER"
~!Dead("balth")!Global("BalthazarFights","GLOBAL",1)~
END

ALTER_TRANS ambar01
BEGIN 3 21 END
BEGIN 1 END
BEGIN "TRIGGER"
~!Dead("dw#melis")~
END

ALTER_TRANS ambar01
BEGIN 3 21 END
BEGIN 6 END
BEGIN "TRIGGER"
~!Dead("amfaheed")OR(2)Dead("abazigal")Dead("sendai")~
END

ALTER_TRANS ambar01
BEGIN 3 21 END
BEGIN 7 END
BEGIN "TRIGGER"
~Dead("amfaheed")OR(2)Dead("abazigal")Dead("sendai")~
END
