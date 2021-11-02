; SYNTAX TEST "Packages/User/purebasic-language-for-sublime-text/PureBasic.sublime-syntax"

Define WithoutTypeOrValue
; <- keyword.declaration.purebasic
;^^^^^ keyword.declaration.purebasic
;      ^^^^^^^^^^^^^^^^^^ variable.other.purebasic

Define.i WithTypeButWithoutValue
; <- keyword.declaration.purebasic
;^^^^^ keyword.declaration.purebasic
;     ^ punctuation.separator.purebasic
;      ^ storage.type.purebasic
;        ^^^^^^^^^^^^^^^^^^ variable.other.purebasic

Define With.i, Different.s, Types.w
; <- keyword.declaration.purebasic
;^^^^^ keyword.declaration.purebasic
;      ^^^^ variable.other.purebasic
;          ^ punctuation.separator.purebasic
;           ^ storage.type.purebasic
;            ^ punctuation.separator.purebasic
;              ^^^^^^^^^ variable.other.purebasic
;                       ^ punctuation.separator.purebasic
;                        ^ storage.type.purebasic
;                         ^ punctuation.separator.purebasic
;                           ^^^^^ variable.other.purebasic
;                                ^ punctuation.separator.purebasic
;                                 ^ storage.type.purebasic

Define.s a1 = "a1", a2 = "a2", a3 = "a3"
; <- keyword.declaration.purebasic
;^^^^^ keyword.declaration.purebasic
;     ^ punctuation.separator.purebasic
;      ^ storage.type.purebasic
;        ^^ variable.other.purebasic
;           ^ keyword.assignment.purebasic
;             ^ punctuation.definition.string.begin
;             ^^^^ string.quoted.double
;                ^ punctuation.definition.string.end
;                 ^ punctuation.separator.purebasic
;                   ^^ variable.other.purebasic
;                      ^ keyword.assignment.purebasic
;                        ^ punctuation.definition.string.begin
;                        ^^^^ string.quoted.double
;                           ^ punctuation.definition.string.end
;                            ^ punctuation.separator.purebasic
;                              ^^ variable.other.purebasic
;                                 ^ keyword.assignment.purebasic
;                                   ^ punctuation.definition.string.begin
;                                   ^^^^ string.quoted.double
;                                      ^ punctuation.definition.string.end

Define.c aao1.i = 2, x.q = 1.3, aao2.s = "all at once"
; <- keyword.declaration.purebasic
;^^^^^ keyword.declaration.purebasic
;     ^ punctuation.separator.purebasic
;        ^^^ variable.other.purebasic
;            ^ punctuation.separator.purebasic
;             ^ storage.type.purebasic
;               ^ keyword.assignment.purebasic
;                 ^ constant.numeric.purebasic
;                  ^ punctuation.separator.purebasic
;                    ^ variable.other.purebasic
;                     ^ punctuation.separator.purebasic
;                      ^ storage.type.purebasic
;                        ^ keyword.assignment.purebasic
;                          ^^^ constant.numeric.purebasic
;                             ^ punctuation.separator.purebasic
;                               ^^^^ variable.other.purebasic
;                                   ^ punctuation.separator.purebasic
;                                    ^ storage.type.purebasic
;                                      ^ keyword.assignment.purebasic
;                                        ^ punctuation.definition.string.begin
;                                        ^^^^^^^^^^^^^ string.quoted.double
;                                                    ^ punctuation.definition.string.end