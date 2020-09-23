VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   690
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3450
   LinkTopic       =   "Form1"
   ScaleHeight     =   690
   ScaleWidth      =   3450
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   60
      Top             =   2640
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'And remember, compile to p-code!!!

'PROTECTION TECHNIQUES:
'------------------------------------------------------------
'- "SoftICE" (via VxD, window name and process name)
'------------------------------------------------------------
'- "Win32Dasm"
'- "Debuggy By Vanja Fuckar" - Debuggy.exe
'- "OllyDBG" - OLLYDBG.exe
'- "ProcDump by G-Rom, Lorian & Stone" - PROCDUMP.exe
'- "SoftSnoop by Yoda/f2f" - SoftSnoop.exe
'- "TimeFix by GodsJiva" - TimeFix.exe
'- "TMR Ripper Studio" - "TMG Ripper Studio.exe"
'------------------------------------------------------------
'- Regmon
'- Filemon
'------------------------------------------------------------
'- Protection against step-debugging. (TimeFix-kill used before!!)
'------------------------------------------------------------


'- Processor handling routines are based on the processor handling
'  routines written by Deniz Mert Edincik.

'- SoftICE detection using VxD written by JooX (and/or) David Eriksson

'- RegMon & FileMon detection by Detonate

'- String encoding, window title detection, process detection and
'  process destruction force-crash routines by Method.



Private Sub Form_Load()
HAD2HAMMER = False

wX = 0: wY = 0
GetSystemTime
End Sub

Private Sub Form_Resize()
If wY = 0 Then End
End Sub

Private Sub Timer1_Timer()
Me.Move Me.Left, Me.Top, wX, wY
End Sub

