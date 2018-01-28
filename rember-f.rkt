#lang racket

(define rember-f
  (lambda (test? a l)
    (cond
      ((null? l) '())
      ((test? a (car l)) (rember-f test? a (cdr l)))
      (else (cons (car l) (rember-f test? a (cdr l))))
      )
))

(define rember-lambda-f
  (lambda (test?)
    (lambda (a l)
      (cond
        ((null? l) '())
        ((test? a (car l)) (rember-f test? a (cdr l)))
        (else (cons (car l) (rember-f test? a (cdr l))))
        ))
))

(rember-f eq? "a" '("b" "c" "a"))
(rember-f eq? "a" '("b" "c" "a" "e"))

((rember-lambda-f eq?) "a" '("b" "c" "a"))
((rember-lambda-f eq?) "a" '("b" "c" "a" "e"))
