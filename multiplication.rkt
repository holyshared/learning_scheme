#lang racket

(define multiplication
  (lambda (v n)
    (cond
      ((zero? n) 0)
      (else (+ v (multiplication v (sub1 n))))
      )
    ))

(multiplication 10 0)
(multiplication 10 1)
(multiplication 10 2)
(multiplication 10 3)
