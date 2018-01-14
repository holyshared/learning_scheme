#lang racket

(define eqlist?
  (lambda (l1 l2)
    (cond
      ((and (null? l1) (null? l2)) #t)
      ((or (null? l1) (null? l2)) #f)
      ((and (pair? (car l1)) (pair? (car l2))) (eqlist? (car l1) (car l2)))
      ((or (pair? (car l1)) (pair? (car l2))) #f)
      (else (cond
              ((eq? (car l1) (car l2)) (eqlist? (cdr l1) (cdr l2)))
              (else #f)
              ))
      )
))

; true
(eqlist? '("a") '("a"))
(eqlist? '("a" "b") '("a" "b"))
(eqlist? '("a" ("a" "b") "b") '("a" ("a" "b") "b"))

; false
(eqlist? '("a") '())
(eqlist? '() '("a"))
(eqlist? '("a") '("b"))
(eqlist? '("a" ("a" "b")) '("a" ("a" "c")))
