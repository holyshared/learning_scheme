#lang racket

(define insertL*
  (lambda (new old l)
    (cond
      ((null? l) '())
      ((pair? (car l)) (cons (insertL* new old (car l)) (insertL* new old (cdr l))))
      ((eq? (car l) old) (cons new (cons old (insertL* new old (cdr l) ))))
      (else (cons (car l) (insertL* new old (cdr l))))
    )
))

(insertL* "*" "a" '("a" "b" "c"))
(insertL* "*" "a" '("a" "b" ("d" "e" "a") "c"))
(insertL* "*" "a" '("a" "b" ("d" "e" ("f" "a" "g") "a") "c"))
