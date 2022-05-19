#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (next-perf n)
  (if ( = (sum-of-factors n) n)
      n
      (next-perf (+ n 1))))

(define (sum-of-factors n)
  (define (factors counter sum)
    (cond (( > counter (/ n 2) ) sum)
          (( = (remainder n counter) 0)
           (factors (+ counter 1)
                    (+ sum counter)) )

          (else (factors (+ counter 1) sum))))
          

  (if (< n 4)
      0
      (factors 2 1)) )

(next-perf 400)