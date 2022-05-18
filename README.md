# GMConsole

Console window for legacy Game Maker used for logging/debugging purpose.

Runs on Game Maker 8 and 8.1. Not tested on older versions but it should work too on Game Maker 5, 6, and 7.

# Using

Import [GMConsole.gml](GMConsole.gml) script into your project (`Scripts -> Import Scripts...`) and put GMConsole.dll on the same directory as your project file (.gmk/.exe) to utilize this DLL.

See [Example.gmk](Example.gmk) for a cool looking example.

# Functions

```gml
//Start the console window.
//[btn] - If true, disable the 'X' button on the console.
consoleInit(btn);

//Close the console window.
consoleFree();

//Print a string.
//[str] - String to print
consolePrint(str);

//Print a string with new line.
//[str] - sTring to print
consolePrintln(str);

//Set the console title
//[title] - Console title
consoleTitle(title);

//Set the console color
//[bg] - Background color
//[fg] - Foreground/text color
consoleColor(bg, fg);

/* Colors:
    0 = Black       8 = Gray
    1 = Blue        9 = Light Blue
    2 = Green      10 = Light Green
    3 = Aqua       11 = Light Aqua
    4 = Red        12 = Light Red
    5 = Purple     13 = Light Purple
    6 = Yellow     14 = Light Yellow
    7 = White      15 = Bright White */

//Hide the console window
consoleHide();

//Show the console window
consoleShow();
```

# Building

Tiny C Compiler:
```ps
tcc GMConsole.c -shared
```

GNU C Compiler:
```ps
gcc GMConsole.c -o GMConsole.dll -shared -s
```

I used `tcc` to build as it will generate only 6 KB of DLL binary while `gcc` generate 10 KB DLL binary (30 KB without `-s` flag).