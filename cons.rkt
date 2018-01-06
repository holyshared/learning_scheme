#lang racket

(cons "a" '())    ; atomと空のリスト
(cons "a" null)    ; nullもOk
(cons "b" '("a")) ; 1要素あるリストに追加
