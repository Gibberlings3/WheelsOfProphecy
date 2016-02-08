ALTER_TRANS balth BEGIN 44 END BEGIN 3 END BEGIN "TRIGGER" ~!Dead("dw#melis")~ END
ALTER_TRANS balth BEGIN 45 END BEGIN 5 END BEGIN "TRIGGER" ~!Dead("dw#melis")~ END
ALTER_TRANS balth BEGIN 49 END BEGIN 3 END BEGIN "TRIGGER" ~!Dead("dw#melis")~ END
ALTER_TRANS balth BEGIN 71 END BEGIN 5 END BEGIN "TRIGGER" ~!Dead("dw#melis")~ END
ALTER_TRANS balth BEGIN 84 END BEGIN 4 END BEGIN "TRIGGER" ~!Dead("dw#melis")~ END
ALTER_TRANS balth BEGIN 94 END BEGIN 3 END BEGIN "TRIGGER" ~!Dead("dw#melis")~ END

ALTER_TRANS balth BEGIN 44 49 94 END BEGIN 0 END BEGIN "TRIGGER" ~Global("WhatBecomesMelissan","LOCALS",0) Dead("sendai")Dead("abazigal")~ END

ALTER_TRANS balth BEGIN 50 END BEGIN 0 END BEGIN "TRIGGER" ~GlobalGT("ConvinceBalth","GLOBAL",3) Dead("sendai")Dead("abazigal")~ END

ALTER_TRANS balth BEGIN 50 END BEGIN 1 END BEGIN "TRIGGER" ~!GlobalGT("ConvinceBalth","GLOBAL",3) Dead("sendai")Dead("abazigal")~ END

ALTER_TRANS balth BEGIN 54 END BEGIN 0 END BEGIN "TRIGGER" ~GlobalGT("ConvinceBalth","GLOBAL",0)Dead("sendai")Dead("abazigal")~ END

ALTER_TRANS balth BEGIN 8 9 10 11 END BEGIN 0 END BEGIN "JOURNAL" ~@1021~ END

