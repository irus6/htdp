#lang racket

(define (area-of-disk r)
  (* pi (sqr r)))

(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

(define (Fahrenheit->Celsius c)
  (+ (* (/ 9.0 5) c) 32))

(define (Celsius->Fahrenheit f)
  (* (/ 5.0 9) (- f 32)))
