#lang racket

(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) old) (cons new (cons old (cdr lat))))
      (else (cons (car lat) (insertL new old (cdr lat)))))
))

(insertL "*" "1" '("1" "2" "3"))
(insertL "*" "2" '("1" "2" "3"))
(insertL "*" "3" '("1" "2" "3"))
