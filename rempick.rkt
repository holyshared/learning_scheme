#lang racket

(define rempick
  (lambda (n lat)
    (cond
      ((zero? n) (cdr lat))
      (else (cons (car lat) (rempick (sub1 n) (cdr lat))))
      )))

(rempick 0 '("a" "b" "c"))
(rempick 1 '("a" "b" "c"))
(rempick 2 '("a" "b" "c"))
