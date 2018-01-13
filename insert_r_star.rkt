#lang racket

(define insertR*
  (lambda (new old l)
    (cond
      ((null? l) '())
      ((pair? (car l)) (cons (insertR* new old (car l)) (insertR* new old (cdr l))))
      ((eq? (car l) old) (cons (car l) (cons new (insertR* new old (cdr l)))))
      (else (cons (car l) (insertR* new old (cdr l))))
    )
))

(insertR* "*" "a" '("a" "b" "c"))
(insertR* "*" "a" '("d" "a" "f" "a"))
(insertR* "*" "a" '("a" '("a" "b" "c") "b" "c" '("d" "a" "f" "a")))
