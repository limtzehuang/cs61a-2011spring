#lang scheme
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (switch st)
  
  (define (isChar? tmp)
    (< (count tmp) 2))

  ;Capitalize 1st
  (define (swapFirst wd)
    (if (isChar? wd)
        (if (member? wd '(I i)) 'You wd)
        (if (member? wd '(You you)) 'I wd)))
  ;other than 1st
  (define (swapThen tmp)
    (define (swapWord wd)
        (cond ((member? wd '(I i Me me)) 'you)
              ((member? wd '(You you)) 'me)
              (else wd)))
        (if (empty? tmp) '()
        (se (swapWord (first tmp)) (swapThen (bf tmp)))))         

  (se (swapFirst(first st)) (swapThen(bf st)))    
)

(switch '(You told me that I should wake you up))

