;; SYNTAX TEST "Packages/ST4-PureBasic/PureBasic.sublime-syntax"

; ==============================================================================
;                              Comparison Operators                             
; ==============================================================================

; NOTE 1: The current scope 'keyword.comparison' should be renamed to
;         'keyword.operator.comparison' instead.

; NOTE 2: In PureBasic >= and => are identical, the same goes with <= and =<,
;         i.e. the constituents' order in multi-character comparison operators
;         is not strict (unlike other languages).

; NOTE 3: failure to capture multi-character operators as a single token results
;         in broken ligatures! The expected ligature should be visible in the
;         side comments — if not, then make sure that you're using a font that
;         supports ligatures and that they are enabled in either global or per
;         syntax settings.

If x = y
;;   ^    -keyword.operator.assignment
;;   ^     keyword.operator.comparison
  Debug "Equal"  
EndIf

If x >= y ; Expected ligature: >=
;;   ^^    -keyword.operator.assignment
;;   ^^     keyword.operator.comparison
  Debug "Greater or equal"  
EndIf

If x => y ; Expected ligature: =>
;;   ^^    -keyword.operator.assignment
;;   ^^     keyword.operator.comparison
  Debug "Greater or equal"  
EndIf

If x <= y ; Expected ligature: <=
;;   ^^    -keyword.operator.assignment
;;   ^^     keyword.operator.comparison
  Debug "Lesser or equal"  
EndIf

If x =< y ; No ligature expected for =<
;;   ^^    -keyword.operator.assignment
;;   ^^     keyword.operator.comparison
  Debug "Lesser or equal"  
EndIf

; NOTE 4: The '<>' operator seems to be matched as two separate token, you can
;         see it in the difference between the ligature in the comments and the
;         matched operator.

If x <> y ; Expected ligature: <>
;;   ^^    -keyword.operator.assignment
;;   ^^     keyword.operator.comparison
  Debug "Different"  
EndIf

