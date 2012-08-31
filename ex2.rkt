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

(define (dollar->euro d)
  (* d  0.792958528))

(define (euro->dollar e)
  (* e (/ 1 0.792958528)))

(define (triangle d l)
  (/ (* d l) 2))

(define (convert3 a b c)
  (+ (* c 100) (* b 10) a))

(define (2.2.5.1 n)
  (+ (* n n) 10))

(define (2.2.5.2 n)
  (+ (* (/ 1 2) (* n n)) 20))

(define (2.2.5.3 n)
  (- 2 (/ 1 n)))

(define (tax a)
  (* a 0.15))

(define (netpay h)
  (* h 12))

(define (sum-coins penny nickel dime quarter)
  (+ (* 25 quarter) (* 10 dime) (* 5 nickel) penny))

(define (total-profit c)
  (- (* c 5) (+ 20 (* c 0.5))))
