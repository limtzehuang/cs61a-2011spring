#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)



(define (factorial n)
  (define (product term a next b)
    (if ( or (> a b) (= a b))
        (* (term a) (product term (next a) next b))
        1 )  )
  ;identity is used for implementation of "term"
  (define (identity x)x)
  (define (dec x) (- x 1))
  (product identity n dec 1))

(define (phi n)
  (define (inc x) (+ x 2))
  
  (define (product old new counter)
    (if ( = counter 0)
        1
        ( * new (product new (if (= old new) (inc new) new) ( - counter 1)))))



  (let (( numerator 2)
        ( denominator 1))
    (/ (product (- numerator 1) numerator n) (product denominator denominator n)))
  ;numerator

)

(* 2 (phi 1000))
(factorial 5)


