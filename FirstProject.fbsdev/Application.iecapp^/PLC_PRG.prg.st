PROGRAM PLC_PRG
VAR
    xStart   : BOOL;        // set TRUE online to start blinking
    tonBlink : TON;         // timer
    xLamp    : BOOL;        // toggles every 500 ms
    iCount   : INT;         // counts toggles
END_VAR

tonBlink(IN := xStart AND NOT tonBlink.Q, PT := T#500MS);

IF tonBlink.Q THEN
    xLamp  := NOT xLamp;
    iCount := iCount + 1;
END_IF