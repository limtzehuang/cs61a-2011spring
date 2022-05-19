#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (square x) (* x x))  

(define (compose f g) (lambda (x) (f (g x))))

(define (repeated f n)
  (lambda (x) ( repeatIt
)


((repeated square 2) 5)