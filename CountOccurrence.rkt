#lang racket
(define count
  (lambda ( x list)
    (cond
      ((null? list) 0)
      ((equal? x (car list)) (+ 1 (count x (cdr list))))
      (else (count x (cdr list)))
      )
    )
  )
        
