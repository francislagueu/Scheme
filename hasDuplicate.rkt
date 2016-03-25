#lang racket
(define hasDuplicate
  (lambda (lst)
    (cond
      ((null? lst) #f)
      ((not (not (member (car lst) (cdr lst)))) #t)
      (else (hasDuplicate (cdr lst)))
      )
    )
  )