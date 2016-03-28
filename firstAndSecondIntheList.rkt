#lang racket
(define f
  (lambda (lst)
    (let ([x (car lst)] [y (cadr lst)])
    ( +
      (* (car x) (car y))
       (* (cadr x) ( cadr y))
         ))))