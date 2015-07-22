#lang racket

(define-syntax-rule (def id body)
  (define id body))

(define-syntax-rule (fn binding body)
  (lambda binding body))

(def rem remainder)
(def div quotient)

(define (numcol n)
  (def (iter i res)
    (if (< i 10)
        (cons i res)
        (iter (div i 10) (cons (rem i 10) res))))
  (iter n '[]))

(define (jumdig n)
  (length (numcol n)))

(define (sqrt2 lim)
  (def (iter i)
    (if (= i lim)
        2
        (+ 2 (/ 1 (iter (+ 1 i))))))
  (+ 1 (/ 1 (iter 1))))

(define (sol57 lim)
  (def (iter i res)
    (if (= i lim)
        res
        (let* [(resi (sqrt2 i))
               (num (jumdig (numerator resi)))
               (den (jumdig (denominator resi)))]
          (if (> num den)
              (iter (+ i 1) (+ 1 res))
              (iter (+ i 1) res)))))
  (iter 1 0))