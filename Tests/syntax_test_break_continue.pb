;; SYNTAX TEST "Packages/ST4-PureBasic/PureBasic.sublime-syntax"

EnableExplicit

Define k.i

For k = 0 To 10
;; <- keyword.control.purebasic
;;^ keyword.control.purebasic
;;  ^ variable.other.purebasic
;;    ^ keyword.operator.assignment.purebasic
;;      ^ constant.numeric.decimal.purebasic
;;        ^^ keyword.control.purebasic
;;           ^^ constant.numeric.decimal.purebasic
    If k = 5
;;  ^^ keyword.control.purebasic
;;     ^ variable.other.purebasic
;;       ^ keyword.operator.assignment.purebasic
;;         ^ constant.numeric.decimal.purebasic
        Break
;;      ^^^^^ keyword.control.purebasic
    EndIf
;;  ^^^^^ keyword.control.purebasic
    Debug k
;;  ^^^^^ keyword.other.purebasic
;;        ^ variable.other.purebasic
Next
;; <- keyword.control.purebasic
;;^^ keyword.control.purebasic

For k = 0 To 10
;; <- keyword.control.purebasic
;;^ keyword.control.purebasic
;;  ^ variable.other.purebasic
;;    ^ keyword.operator.assignment.purebasic
;;      ^ constant.numeric.decimal.purebasic
;;        ^^ keyword.control.purebasic
;;           ^^ constant.numeric.decimal.purebasic
    If k = 5
;;  ^^ keyword.control.purebasic
;;     ^ variable.other.purebasic
;;       ^ keyword.operator.assignment.purebasic
;;         ^ constant.numeric.decimal.purebasic
        Continue
;;      ^^^^^^^^ keyword.control.purebasic
    EndIf
;;  ^^^^^ keyword.control.purebasic
    Debug k
;;  ^^^^^ keyword.other.purebasic
;;        ^ variable.other.purebasic
Next
;; <- keyword.control.purebasic
;;^^ keyword.control.purebasic
