#lang racket

(define-syntax-rule (fn bind body)
  (lambda bind body))

(define-syntax-rule (def id body)
  (define id body))

(require 2htdp/universe
         2htdp/image)

(define (spin-alot t)
    (local [(define (spin-more i θ)
              (cond
                [(= θ 360) i]
                [else
                 (spin-more (overlay i (rotate θ t))
                            (+ θ 1))]))]
      (spin-more t 0)))

(def r1 (isosceles-triangle 120 30 "solid" (color 0 0 225 10)))

(define (create-UFO-scene height)
  (underlay/xy (rectangle 100 100 "solid" "white") 50 height UFO))
 
(define UFO
  (underlay/align "center"
                  "center"
                  (circle 10 "solid" "green")
                  (rectangle 40 4 "solid" "green")))


        
       


