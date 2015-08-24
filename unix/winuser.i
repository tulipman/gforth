// this file is in the public domain
%module wingdi
%insert("include")
%{
#include <w32api/wtypes.h>
#include <w32api/winuser.h>
%}
#define WINAPI
#define WINAPI_FAMILY_PARTITION(x) x
#define __MINGW_TYPEDEF_AW(x)
#define WINAPI_PARTITION_DESKTOP 1
#define WINAPI_PARTITION_APP 1
#define UNALIGNED
#define CONST
#define CALLBACK
#define DECLSPEC_IMPORT
#define WINUSERAPI
#define WINAPIV
#define __C89_NAMELESS

%apply unsigned char { BYTE, CHAR };
%apply unsigned short { WORD, WPARAM, WCHAR, SHORT, ATOM };
%apply int { WINBOOL, INT, BOOLEAN, INT_PTR };
%apply unsigned int { UINT, COLORREF, DWORD, BLENDFUNCTION, ACCESS_MASK,
     UINT_PTR };
%apply long { LONG, LPARAM, LRESULT, __LONG32, ULONG_PTR };
%apply unsigned long { ULONG };
%apply float { FLOAT };
%apply void { VOID };
%apply SWIGTYPE * { HDC, HGLRC, LPCSTR, LPWSTR, LPSTR, HPALETTE,
     LPVOID, LPDWORD, HCOLORSPACE, LPLOGCOLORSPACEW, LPLOGCOLORSPACEA,
     HGDIOBJ, LPPOINT, HBITMAP, LPSIZE, LPCWSTR, HRGN, HANDLE, PFLOAT,
     LPXFORM, LPTEXTMETRICA, HPEN, PROC, LPTEXTMETRICW, HENHMETAFILE,
     LPBYTE, HENHMETAFILE, LPPALETTEENTRY, LPHANDLETABLE, LPENHMETAHEADER,
     HMETAFILE, LPMETARECORD, LPHANDLETABLE, PVOID, PTRIVERTEX,
     LPINT, LPWORD, HFONT, LPRECT, LPRGNDATA, LPBITMAPINFO,
     LPLOGFONTW, HBRUSH, LPLOGFONTA, LPDEVMODE, HWND, HMODULE, HGLOBAL,
     LPPIXELFORMATDESCRIPTOR, PUINT, HRAWINPUT, HWINEVENTHOOK, HMONITOR,
     LPMSG, HINSTANCE, LPCRECT, HICON, PBYTE, HCURSOR, HMENU,
     HHOOK, HOOKPROC, PROPENUMPROCA, WNDENUMPROC, PROPENUMPROCEXW,
     GRAYSTRINGPROC, HACCEL, TIMERPROC, HKL, PROPENUMPROCW,
     PROPENUMPROCEXA, LPCDLGTEMPLATEW, DLGPROC, LPCDLGTEMPLATEA,
     DRAWSTATEPROC, FARPROC, SENDASYNCPROC, PDWORD_PTR, PSECURITY_DESCRIPTOR,
     PSECURITY_INFORMATION, HWINSTA, LPSECURITY_ATTRIBUTES, HDESK, va_list };

// exec: sed -e 's/c-function .*Shutdown/\\ &/' -e 's/c-function .*A /\\ &/' -e 's/\(c-function [^ ]*\)W /\1 /g'

%include <w32api/windef.h>
%include <w32api/winuser.h>
