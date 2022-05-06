; This is a macro for assisting in the indexing of documents in AppXtender
; Most of these macros rely on the user filling out the ID field before execution

#SingleInstance Force
#Persistent
#NoEnv
;SetCapsLockState, AlwaysOff

#IfWinACtive, ahk_class Chrome_WidgetWin_1

; Delete the batch (Ctrl + D)
^d::
MouseClick, Left, 107, 198
Sleep, 10
MouseClick, Left, 1652, 243
return

; Clicks the "OK" button on a message box if it pops up
^o::
if WinActive("ahk_class" . #32770)
ControlClick, OK, Message from webpage
Return

^\::
MouseClick, Left, 1161, 312
Return

; Clears the index information and resets the cursor to the ID field textbox
^Backspace::
MouseClick, Left, 1646, 140
MouseClick, Left, 1649, 243
Return

; Indexes acceptence and denial letters to the student's ID, under Admission Letter document type
^a::
Send, `t
Sleep, 25
MouseClick, Left, 1650, 330
Sleep, 75
Send, a
Sleep, 75
Send , {enter}
MouseClick, Left, 1650, 520
Sleep, 95
Send, 20
Sleep, 90
Send, 22
Sleep, 90
Send, 2
Sleep, 90
Send, {enter}
Sleep, 80
MouseClick, Left, 1837, 676
Send, {enter}
return

!m::
Send, {enter}
MouseClick, Left, 52, 167
Sleep, 550
MouseClick, Left, 89, 448
Sleep, 100
MouseClick, Left, 980, 276
Sleep, 100
MouseClick, Left, 987, 320
Sleep, 100
MouseClick, Left, 1153, 561
Sleep, 500
Send, {tab}
Sleep, 150
Send, {enter}
Sleep, 150
MouseClick, Left, 919, 257
return

^b::
MouseClick, Left, 1837, 676
return

^e::
Send, {enter}
Sleep, 200
MouseClick, Left, 199, 258
Sleep, 200
Send, appl{tab}20184{tab}{enter}
return

; Clicks the "Append" button. Appends the document to already existing documents, of the same type, that exist for the same term
^r::
MouseClick, Left, 1157, 290
return

; Indexes college documents
^w::
Send, `t
Sleep, 25
MouseClick, Left, 1650, 330
Sleep, 75
Send, c
Sleep, 75
Send, o
Sleep, 75
Send , {enter}
MouseClick, Left, 1650, 520
Sleep, 95
Send, 20
Sleep, 90
Send, 22
Sleep, 90
Send, 2
Sleep, 90
Send, {enter}
Sleep, 80
MouseClick, Left, 1837, 676
Send, {enter}
return

; Indexes application fee waivers or any Waiver document types
!w::
Send, `t
Sleep, 25
MouseClick, Left, 1650, 330
Sleep, 75
Send, w
Sleep, 75
Send, a
Sleep, 75
Send , {enter}
MouseClick, Left, 1650, 520
Sleep, 95
Send, 20
Sleep, 90
Send, 22
Sleep, 90
Send, 2
Sleep, 90
Send, {enter}
Sleep, 80
MouseClick, Left, 1837, 676
Send, {enter}
return

; Indexes Recommendation document types
!c::
Send, `t
Sleep, 25
MouseClick, Left, 1650, 330
Sleep, 75
Send, r
Sleep, 75
Send, e
Sleep, 75
Send , {enter}
MouseClick, Left, 1650, 520
Sleep, 95
Send, 20
Sleep, 90
Send, 22
Sleep, 90
Send, 2
Sleep, 90
Send, {enter}
Sleep, 80
MouseClick, Left, 1837, 676
Send, {enter}
return

; Indexes High School Transcript document types
^q::
Send, `t
Sleep, 25
MouseClick, Left, 1650, 330
Sleep, 50
Send, hi
Sleep, 50
Send , {enter}
MouseClick, Left, 1650, 520
Sleep, 95
Send, 20
Sleep, 90
Send, 22
Sleep, 90
Send, 2
Sleep, 90
Send, {enter}
Sleep, 80
MouseClick, Left, 1837, 676
Send, {enter}
return

; Indexes Test Score Info document types
^t::
Send, `t
Sleep, 25
MouseClick, Left, 1650, 330
Sleep, 50
Send, te
Sleep, 50
Send , {enter}
MouseClick, Left, 1650, 520
Sleep, 95
Send, 20
Sleep, 90
Send, 22
Sleep, 90
Send, 2
Sleep, 90
Send, {enter}
Sleep, 80
MouseClick, Left, 1837, 676
Send, {enter}
return

; Indexes Application Info document types
^g::
Send, `t
Sleep, 25
MouseClick, Left, 1650, 330
Sleep, 50
Send, app
Sleep, 50
Send, l
Sleep, 50
Send , {enter}
MouseClick, Left, 1650, 520
Sleep, 95
Send, 20
Sleep, 90
Send, 22
Sleep, 90
Send, 2
Sleep, 90
Send, {enter}
Sleep, 80
MouseClick, Left, 1837, 676
Send, {enter}
return

; Deletes current page from batch
^`::
MouseClick, Left, 292, 199
Sleep, 150
MouseClick, Left, 1146, 275
return

; Adds current page to current index
=::
MouseClick, Left, 347, 192
return

; Adds all pages left in batch to current index
!=::
MouseClick, Left, 379, 195
Sleep, 100
MouseClick, Left, 1153, 274
return

^+w::
MouseClick, Left, 1786, 270
Sleep, 75
Send, w
Sleep, 50
MouseClick, Left, 1806, 324
Sleep, 25
MouseClick, Left, 1778, 435
Sleep, 45
Send, 20
Sleep, 50
Send, 22
Sleep, 50
Send, 2
Sleep, 50
MouseClick, Left, 1780, 504
Sleep, 50
MouseClick, Left, 1837, 676
return

; Specifically used in the GUIALTI module of Banner to clear the Last Name and First Name fields, setting the active field for Last Name.
!v::
Send, {F7}
Sleep, 100
Click, 1118, 226
Sleep, 200
Send, ^a
Sleep, 10
Send, {del}
Click, 1357, 226
Sleep, 70
Send, ^a
Sleep, 10
Send, {del}
Sleep, 70
MouseClick, Left, 928, 226
SoundBeep, 500, 50
return

; Indexes Proof of Citizenship document types
!p::
Send, `t
Sleep, 25
MouseClick, Left, 1650, 330
Sleep, 50
Send, pro
Sleep, 75
Send, o
Sleep, 50
Send , {enter}
MouseClick, Left, 1650, 520
Sleep, 95
Send, 20
Sleep, 90
Send, 22
Sleep, 90
Send, 2
Sleep, 90
Send, {enter}
Sleep, 80
MouseClick, Left, 1837, 676
Send, {enter}
return

; Indexes Residency Information type documents
!r::
MouseClick, Left, 1675, 328
Sleep, 100
Send, re
Sleep, 75
Send, s
Sleep, 50
Send , {enter}
MouseClick, Left, 1650, 520
Sleep, 95
Send, 20
Sleep, 90
Send, 22
Sleep, 90
Send, 2
Sleep, 90
Send, {enter}
Sleep, 80
MouseClick, Left, 1837, 676
Send, {enter}
return

; Clicks "Index Another Batch" in AppXtender
^s::
MouseClick, Left, 843,245
return

#IfWinActive, IEMacroRebuildTest - Notepad

; Marco that reloads my macros after saving my adjustments to my macros
~^s::
reload
return

#IfWinActive

; Enables/Disables these macros
!x::
Suspend
return