#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (nop n)
  (define y (lambda (x) (/ (- x 1) 2)))  
  (cond ((= n 1) 1)
        ((isEven n) (+ (square (/ n 2)) 1))
        ( else (+ (square (y n))
                 (y n)
                 1
                 )
              )))

(define (square x) (* x x))

(define (isEven n)
  (= (remainder n 2) 0))

(nop 7)


