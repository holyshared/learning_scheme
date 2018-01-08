#lang racket

(define rempick
  (lambda (n lat)
    (cond
      ((eq? n 1) (cdr lat))
      (else (cons (car lat) (rempick (sub1 n) (cdr lat))))
)))

(rempick 1 '("a" "b" "c"))
(rempick 2 '("a" "b" "c"))
(rempick 3 '("a" "b" "c"))
