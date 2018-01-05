#lang racket

(cond ((null? '()) #t))    ; nullなので#tを返す
(cond ((null? '("a")) #t)) ; nullでないので、何も返さない?
(cond ((null? '("a")) #t) (print "a1")) ; 最後のprintが評価されている
(cond ((null? '("a")) #t) ((pair? '("a")) #f)) ; 最後のpair?が評価されている
(cond ((null? '("a")) #t) (else #f)) ; elseが評価されている
