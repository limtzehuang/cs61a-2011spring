#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (ends-e st)

  (define (checker wd)
    (if (member? (last wd) '(e E))
        wd
        '()))
  
  (define (check-e tmp)
    (if (empty? tmp) '()
        (se (checker (first tmp)) (check-e (bf tmp)))))
        
  
  (cond (( = (count st) 0) '())
        (( = (count st) 1) (se(checker (first st))))
        (( > (count st) 1) (check-e st))
        (else '()))

)
(ends-e '(Please put the blue salami above the blue elephant))

;exptected result : (please the above the blue)