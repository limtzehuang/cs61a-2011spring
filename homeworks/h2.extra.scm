#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

((lambda (a b)
   ((lambda (square)
      (+ (square a) (square b)))

    (lambda (x) (* x x))))
 3 4)