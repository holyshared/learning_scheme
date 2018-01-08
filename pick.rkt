#lang racket

(define pick
  (lambda (n lat)
    (cond
      ((zero? (sub1 n)) (car lat))
      (else (pick (sub1 n) (cdr lat))))
    ))

(pick 1 '("a" "b" "c"))
(pick 2 '("a" "b" "c"))
(pick 3 '("a" "b" "c"))
