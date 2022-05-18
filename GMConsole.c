#include <windows.h>

#define function __declspec(dllexport) double WINAPIV

HANDLE hConsole;
HWND   wConsole, wGame;

function console_init(double hGame, double disableCloseButton)
{
    AllocConsole();

    hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
    wConsole = GetConsoleWindow();
    wGame    = (HWND)(DWORD)hGame;

    SetForegroundWindow(wGame);

    if (disableCloseButton)
        EnableMenuItem(GetSystemMenu(wConsole, FALSE), SC_CLOSE, MF_GRAYED);

    return 0;
}

function console_free()
{
    FreeConsole();
    return 0;
}

function console_print(char* string)
{
    WriteConsoleA(hConsole, string, strlen(string), NULL, NULL);
    return 0;
}

function console_title(char* title)
{
    SetConsoleTitleA(title);
    return 0;
}

function console_color(double bgColor, double fgColor)
{
    SetConsoleTextAttribute(hConsole, bgColor + (fgColor * 16));
    return 0;
}

function console_hide()
{
    ShowWindow(wConsole, SW_HIDE);
    return 0;
}

function console_show()
{
    ShowWindow(wConsole, SW_RESTORE);
    SetForegroundWindow(wGame);
    return 0;
}