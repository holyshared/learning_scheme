#lang racket

(define occur
  (lambda (v lat)
    (cond
      ((null? lat) 0)
      ((eq? v (car lat)) (add1 (occur v (cdr lat))))


      (else (occur v (cdr lat)))
      )))

(occur "a" '("a" "b" "c"))
(occur "a" '('("a") "b" "c"))
(occur "a" '("a" "b" "c" "a"))
