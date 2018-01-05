#lang racket

(null? "a")    ; これはatomなので#f
(null? 1)      ; これはatomなので#f
(null? '("a")) ; これは1要素をもつリストなので#f
(null? '()) ; これは要素0のリストなので#t
(null? null) ; nullは空のリストなので、#t  '() = nullという解釈




