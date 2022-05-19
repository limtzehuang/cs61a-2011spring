#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (square x) (* x x))

(define (double f)
  (lambda (x) (f (f x))))




((double square) 3)

