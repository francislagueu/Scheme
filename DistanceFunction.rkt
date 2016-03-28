#lang racket
(define distFromOrigin
  (lambda (lst)
    (let ([x (car lst)] [y (cadr lst)])
      (sqrt (+
             (* x x)
             (* y y)
             )))))
(define distTwoPoint
  (lambda (lst)
    (let ([x (car lst)] [y (cadr lst)])
      (sqrt (+
             (* (- (car y) (car x)) (- (car y) (car x)))
             (* (- (cadr y) (cadr x)) (- (cadr y) (cadr x)))
             )))))