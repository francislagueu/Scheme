#lang racket
(define distanceFromOrigin
  (lambda (pair)
    (sqrt (+ (sqr (car pair)) (sqr (cadr pair))))
    )
  )
(define addDistanceToPair
  (lambda (pair)
    (cons (distanceFromOrigin pair) pair)
    )
  )
(define closestPointToOrigin
  (lambda (list)
    (let* ([z (map addDistanceToPair list)]
           [y (sort z (lambda (x w) (<= (car x) (car w))))])
      (car y))
    )
  )