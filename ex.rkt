#lang racket

;; ex2
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

;; ex3
(define (inches->cm in)
  (* in 2.54))

(define (feet->inches fe)
  (* fe 12))

(define (yards->feet ya)
  (* ya 3))

(define (rods->yards ro)
  (* ro (/ 11 2)))

(define (furlongs->rods fu)
  (* fu 40))

(define (miles->furlongs mi)
  (* mi 8))

(define (feet->cm fe)
  (inches->cm (feet->inches fe)))

(define (yards->cm ya)
  (feet->cm (yards->feet ya)))

(define (rods->inches ro)
  (feet->inches (yards->feet (rods->yards ro))))

(define (miles->feet mi)
  (yards->feet (rods->yards (furlongs->rods (miles->furlongs mi)))))

(define (volume-cylinder r l)
  (* (area-of-disk r) l))

(define (length-of-circle r)
  (* 2 pi r))

(define (area-cylinder r l)
  (+ (* 2 (area-of-disk r)) (* (length-of-circle r) l)))

(define (area-pipe inner length thick)
  (+ (* (length-of-circle (+ inner thick)) length)
     (* (length-of-circle inner) length)
     (* 2 (- (area-of-disk (+ inner thick))
             (area-of-disk inner)))))

(define (velocity g t)
  (* g t))

(define (height g t)
  (* (/ 1 2) (velocity g t) t))

(define (I f)
  (Celsius->Fahrenheit (Fahrenheit->Celsius f)))

;; 49 page cond example
(define (interest-rate amount)
  (cond
   [(<= amount 1000) 0.040]
   [(<= amount 5000) 0.045]
   [else 0.050]))

;; ex6
(define-struct fight-flight (name acceleration top-speed flight-range))
(define f22 (make-fight-flight 'f22 300 1500 90000))

(define (within-range distance-to-aim a-fight-flight)
  (cond
   [(<= distance-to-aim (fight-flight-flight-range a-fight-flight)) true]
   [else false]))

(define (reduce-range a-fight-flight)
  (make-fight-flight (fight-flight-name a-fight-flight)
                     (fight-flight-acceleration a-fight-flight)
                     (fight-flight-top-speed a-fight-flight)
                     (* 0.8 (fight-flight-flight-range a-fight-flight))))

;; ex7
(define-struct posn (x y))
(define-struct star (last first dob ssn))
(define-struct airplane (kind max-speed max-load price))

(define-struct square (nw length))
(define-struct circle (center radius))
