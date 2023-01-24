;; SYNTAX TEST "Packages/ST4-PureBasic/PureBasic.sublime-syntax"

EnableExplicit

  #CustomConstant = 123
;;^                     punctuation.definition.variable
;;^^^^^^^^^^^^^^^       variable.other.constant

  #StrConst = "PB"
;;^                     punctuation.definition.variable
;;^^^^^^^^^             variable.other.constant

  #DollarConst$ = "PB"
;;^                     punctuation.definition.variable
;;            ^         punctuation.definition.variable
;;^^^^^^^^^^^^^         variable.other.constant
