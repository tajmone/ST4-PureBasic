;; SYNTAX TEST "Packages/ST4-PureBasic/PureBasic.sublime-syntax"

; =============================================================================
; Decimal / Integers
; =============================================================================

Decimal1 = 1234
;;         ^^^^   constant.numeric.decimal

; Leading zeros are ignored (0001 -> 1):
Decimal2 = 0001
;;         ^^^^   constant.numeric.decimal

Negative1 = -66
;;          ^^^   constant.numeric.decimal

Negative2 = -001
;;          ^^^^  constant.numeric.decimal

; ==============================================================================
;                              Hexadecimal Numbers
; ==============================================================================

HexNum1 = $D3ADBEEF
;;        ^^^^^^^^^   constant.numeric.hex

HexNum2 = $d3adbeef
;;        ^^^^^^^^^   constant.numeric.hex

NegativeHex = -$69
;;            ^^^^    constant.numeric.hex

; ==============================================================================
;                                 Binary Numbers
; ==============================================================================

BinaryNum = %1001
;;          ^^^^^   constant.numeric.binary

NegBinary = -%1001
;;          ^^^^^^   constant.numeric.binary

; ==============================================================================
;                                 Floating Point
; ==============================================================================

ThisIsAFloat.f = 1.0
;;               ^^^          constant.numeric.floating-point

NegativeFloat.f = -1.0
;;                ^^^^        constant.numeric.floating-point

FloatNoPoint = 575e+1
;;             ^^^^^^         constant.numeric.floating-point

FloatNoPointNeg = -575e+1
;;                ^^^^^^^     constant.numeric.floating-point

ThisIsADouble.d = 123.5e-20
;;                ^^^^^^^^^   constant.numeric.floating-point

NegativeDouble.d = -123.5e-20
;;                 ^^^^^^^^^^ constant.numeric.floating-point

FloatNum.f = 1.575e+1
;;           ^^^^^^^^         constant.numeric.floating-point

; ------------------------------------------------------------------------------
;                               Floating Bananas?
; ------------------------------------------------------------------------------

; Lo and behold! This is perfectly legal in PB:

FloatingBananas = 1.575e+1bananas
;;                ^^^^^^^^^^^^^^^  constant.numeric.floating-point

; PureBasic doesn't really care about trailing letters in floating point
; definitions, they are ignored. Hence:
;
;     1.575e+1bananas == 1.575e+1papayas == 1.575e+1
;
; (try it if you don't believe me)
