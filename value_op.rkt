#lang racket

(define op
  (lambda (exp)
    (car exp)
))

(define lexp
  (lambda (exp)
    (car (cdr exp))
))

(define rexp
  (lambda (exp)
    (car (cdr (cdr exp)))
))


;
; (value '(+ 3 1)) -> 4
; (value '(- 3 1)) -> 2
;
(define value
  (lambda (nexp)
    (cond
      ((number? nexp) nexp)
      (else (cond
              ((eq? (op nexp) '+)
               (+ (value (lexp nexp)) (value (rexp nexp))))
              ((eq? (op nexp) '-)
               (- (value (lexp nexp)) (value (rexp nexp))))
              ((eq? (op nexp) '/)
               (/ (value (lexp nexp)) (value (rexp nexp))))
              ((eq? (op nexp) '*)
               (* (value (lexp nexp)) (value (rexp nexp))))
              ))
      )
))

(value 1)
(value '(+ 3 1))
(value '(- 3 1))
(value '(/ 3 3))
(value '(* 3 3))
(value '(* (* 3 3) (* 3 3)))
