;; SYNTAX TEST "Packages/ST4-PureBasic/PureBasic.sublime-syntax"

; ==============================================================================
;                                String & Escapes                               
; ==============================================================================

; No escape sequences should show up here:
Literal$ = "\a..\b..\f..\n..\r..\t..\v..\\"
;;         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   string.quoted.double
;;          ^^                               -constant.character.escape
;;              ^^                           -constant.character.escape
;;                  ^^                       -constant.character.escape
;;                      ^^                   -constant.character.escape
;;                          ^^               -constant.character.escape
;;                              ^^           -constant.character.escape
;;                                  ^^       -constant.character.escape
;;                                      ^^   -constant.character.escape

; But here they should:
Escaped$ = ~"\a..\b..\f..\n..\r..\t..\v..\\..\".."
;;         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   string.quoted.double
;;           ^^                                      constant.character.escape
;;               ^^                                  constant.character.escape
;;                   ^^                              constant.character.escape
;;                       ^^                          constant.character.escape
;;                           ^^                      constant.character.escape
;;                               ^^                  constant.character.escape
;;                                   ^^              constant.character.escape
;;                                       ^^          constant.character.escape
;;                                           ^^      constant.character.escape

; NOTE 1: The \\ escape is not being matched!

; ==============================================================================
;                              Invalid Escape Chars
; ==============================================================================

; The only valid escapes in PureBasic are:
;
;   \a  alarm           Chr(7)
;   \b  backspace       Chr(8)
;   \f  formfeed        Chr(12)
;   \n  newline         Chr(10)
;   \r  carriage return Chr(13)
;   \t  horizontal tab  Chr(9)
;   \v  vertical tab    Chr(11)
;   \"  double quote    Chr(34)
;   \\  backslash       Chr(92)

; any other escapes char is invalid and results in the compiler error:
;
;     Invalid escape sequence in literal string: \x
;
; For more info, see "General Syntax Rules" » "Literal strings" at:
; https://www.purebasic.com/documentation/reference/general_rules.html

InvalidEscapes = ~"Wrong..\q..\*"
;;                ^^^^^^^^^^^^^^^   string.quoted.double
;;                        ^^        invalid.illegal.character.escape
;;                        ^^       -constant.character.escape
;;                            ^^    invalid.illegal.character.escape
;;                            ^^   -constant.character.escape

; ==============================================================================
;                                   Edge Cases
; ==============================================================================

Valid.s  = ~"this DQ \" mustn't break the string"
;;         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^   string.quoted.double
;;                   ^^                             constant.character.escape



Broken.s = "this DQ \" ; ends the string
;;         ^^^^^^^^^^^                     string.quoted.double
;;                  ^^                    -constant.character.escape
;;                   ^                     punctuation.definition.string.end
;;                     ^^^^^^^^^^^^^^^^^  -string.quoted.double
