#lang racket

;
; (value 1) -> 1
; (value '(3 + 1)) -> 4
; (value '(3 - 1)) -> 2
;
(define value
  (lambda (nexp)
    (cond
      ((number? nexp) nexp)
      (else (cond
              ((eq? (car (cdr nexp)) '+)
               (+ (value (car nexp)) (value (car (cdr (cdr nexp))))))
              ((eq? (car (cdr nexp)) '-)
               (- (value (car nexp)) (value (car (cdr (cdr nexp))))))
              ((eq? (car (cdr nexp)) '*)
               (* (value (car nexp)) (value (car (cdr (cdr nexp))))))
              ((eq? (car (cdr nexp)) '/)
               (/ (value (car nexp)) (value (car (cdr (cdr nexp))))))
             ))
      )
))

(value 1)
(value '(3 + 1))
(value '(3 - 1))
(value '(3 * 1))
(value '(3 / 3))
(value '((3 / 3) + 1))
(value '((3 + 3) + (3 + 3)))
