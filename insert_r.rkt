#lang racket

(define insertR
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) old) (cons old (cons new (cdr lat))))
      (else (cons (car lat) (insertR new old (cdr lat)))))
))

(insertR "4" "1" '("1" "2" "3"))
(insertR "4" "2" '("1" "2" "3"))
(insertR "4" "3" '("1" "2" "3"))
