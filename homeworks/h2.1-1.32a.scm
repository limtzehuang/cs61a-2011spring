#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      ( combiner (term a) ( accumulate combiner null-value term (next a) next b ))))
        

          

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (identity x) x)

(product identity 1 (lambda (x)(+ x 1)) 5)

