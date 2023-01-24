;; SYNTAX TEST "Packages/ST4-PureBasic/PureBasic.sublime-syntax"

EnableExplicit

Define a = 20
Runtime a
;; <- storage.modifier.purebasic
;;^^^^^ storage.modifier.purebasic

Debug GetRuntimeInteger("a")
