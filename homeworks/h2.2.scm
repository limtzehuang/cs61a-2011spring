#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (square x) (* x x))

(define (every f value)

  (define (recFunction value2 n)
    (if (= 0 n) '()
        (se (f (first value2))  (recFunction (bf value2) (- n 1)) ))
    )

    


  (recFunction value (count value))
)

(every first '(fuck you dude))
