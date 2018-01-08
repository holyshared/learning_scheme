#lang racket

(define division
  (lambda (v n)
    (cond
      ((or (< v n) (zero? v)) 0)
      (else (add1 (division (- v n) n)))
)))

(division 10 2)
(division 10 3)
(division 2 2)
