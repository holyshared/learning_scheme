#lang racket

(define member*
  (lambda (a l)
    (cond
      ((null? l) #f)
      ((pair? (car l))
         (cond
           ((member* a (car l)) #t)
           (else (member* a (cdr l))))
       )
      ((eq? (car l) a) #t)
      (else (member* a (cdr l))   )
      )


))

;; flat
(member* "a" '("b" "c" "a"))
(member* "a" '("b" "c" "d"))

;; nested
(member* "a" '("b" "c" '("d" "a") "d"))
(member* "a" '("b" "c" '("d" '("g" "a")) "d"))
