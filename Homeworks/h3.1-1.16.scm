#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (fast-expt-iter b n 1))

(define (fast-expt-iter b n a)
  (cond ((or (= n 0)
             (= n 1)) a)
        ((even? n) (fast-expt-iter b (/ n 2) (* a b b) ))
        (else (fast-expt-iter b (- n 1) (* a b)))) )

(fast-expt 9 4)



