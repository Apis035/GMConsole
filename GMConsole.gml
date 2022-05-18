#define consoleInit
var dll;
dll = "GMConsole.dll";
global._console_dll   = dll;
global._console_init  = external_define(dll, "console_init",  dll_cdecl, ty_real, 2, ty_real, ty_real);
global._console_free  = external_define(dll, "console_free",  dll_cdecl, ty_real, 0);
global._console_print = external_define(dll, "console_print", dll_cdecl, ty_real, 1, ty_string);
global._console_title = external_define(dll, "console_title", dll_cdecl, ty_real, 1, ty_string);
global._console_color = external_define(dll, "console_color", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._console_hide  = external_define(dll, "console_hide",  dll_cdecl, ty_real, 0);
global._console_show  = external_define(dll, "console_show",  dll_cdecl, ty_real, 0);

external_call(global._console_init, window_handle(), argument0);

#define consoleFree
external_call(global._console_free);
external_free(global._console_dll);

#define consolePrint
external_call(global._console_print, argument0);

#define consolePrintln
external_call(global._console_print, argument0 + chr(13) + chr(10));

#define consoleTitle
external_call(global._console_title, argument0);

#define consoleColor
external_call(global._console_color, argument0, argument1);

#define consoleHide
external_call(global._console_hide);

#define consoleShow
external_call(global._console_show);

