#lang racket

(define eqan?
  (lambda (v1 v2)
    (cond
      ((and (number? v1) (number? v2)) (= v1 v2))
      (else (eq? v1 v2))
)))

(eqan? 1 1)
(eqan? "a" "a")
(eqan? "a" 1)
