' Copyright (c) 2007-2009 Bruce A Henderson
' 
' Permission is hereby granted, free of charge, to any person obtaining a copy
' of this software and associated documentation files (the "Software"), to deal
' in the Software without restriction, including without limitation the rights
' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
' copies of the Software, and to permit persons to whom the Software is
' furnished to do so, subject to the following conditions:
' 
' The above copyright notice and this permission notice shall be included in
' all copies or substantial portions of the Software.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
' THE SOFTWARE.
' 
SuperStrict

Import wx.wx
Import wx.wxDialog
Import BRL.Blitz


' headers :-)
?linux
Import "../lib/linux/wx/include/gtk2-unicode-release-static/*.h"
Import "../include/*.h"
?win32
Import "../lib/win32/mswu/*.h"
Import "../include/*.h"
?macosppc
Import "../lib/macosppc/wx/include/mac-unicode-release-static/*.h"
Import "../include/*.h"
?macosx86
Import "../lib/macosx86/wx/include/mac-unicode-release-static/*.h"
Import "../include/*.h"
?

Import "include/*.h"
Import "src/wxMozillaLikeAboutBoxDialog.cpp"

Import "glue.cpp"

Extern

	Function bmx_wxmozillalikeaboutdialog_create:Byte Ptr(handle:Object, parent:Byte Ptr, id:Int, caption:String, x:Int, y:Int, w:Int, h:Int, style:Int)
	Function bmx_wxmozillalikeaboutdialog_getappname:String(handle:Byte Ptr)
	Function bmx_wxmozillalikeaboutdialog_setappname(handle:Byte Ptr, value:String)
	Function bmx_wxmozillalikeaboutdialog_getversion:String(handle:Byte Ptr)
	Function bmx_wxmozillalikeaboutdialog_setversion(handle:Byte Ptr, value:String)
	Function bmx_wxmozillalikeaboutdialog_getcopyright:String(handle:Byte Ptr)
	Function bmx_wxmozillalikeaboutdialog_setcopyright(handle:Byte Ptr, value:String)
	Function bmx_wxmozillalikeaboutdialog_getcustombuildinfo:String(handle:Byte Ptr)
	Function bmx_wxmozillalikeaboutdialog_setcustombuildinfo(handle:Byte Ptr, value:String)
	Function bmx_wxmozillalikeaboutdialog_getbitmapresource:Byte Ptr(handle:Byte Ptr, name:String)
	Function bmx_wxmozillalikeaboutdialog_geticonresource:Byte Ptr(handle:Byte Ptr, name:String)
	Function bmx_wxmozillalikeaboutdialog_getbuildinfo:String(format:Int)
	Function bmx_wxmozillalikeaboutdialog_setheaderbitmap(handle:Byte Ptr, value:Byte Ptr)
	Function bmx_wxmozillalikeaboutdialog_applyinfo(handle:Byte Ptr)

End Extern


Const wxBUILDINFO_SHORT:Int = 0
Const wxBUILDINFO_LONG:Int = 1


