#lang scheme
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (ordered? nums)

  
  (define (checkOrder x)
    (if ( > (first (bf x)) (first x))
        (if ( > (count x) 2)
            (checkOrder (bf x))
            'True)
        'False))
 
  
  (cond ( ( > (count nums) 2 ) (checkOrder nums)) 
        ( (and (= (count nums) 2) ( > (first(bf nums)) (first nums))) 'True)
        (else 'False))

)

(ordered? '(1 2 3 4 5 6 210 102020))
