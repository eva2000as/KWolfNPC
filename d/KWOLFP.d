BEGIN ~KWOLFP~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0511",825,527,0)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 3 // from:
  SAY @6 
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @10 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @11 
  IF ~~ THEN DO ~StartStore("KWolf01",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY @12 
  IF ~~ THEN EXIT
END
