#lang racket
(require gigls/unsafe)
(define world (image-show (image-new 300 200)))
(define tommy (turtle-new world))
(define trish (turtle-new world))
(define tucker (turtle-new world))
(define turtle-center!
  (lambda (turtle)
    (turtle-teleport! turtle
                      (/ (image-width (turtle-world turtle)) 2)
                      (/ (image-height (turtle-world turtle)) 2))
    (turtle-face! turtle 0)))
(define figure02!
  (lambda (turtle)
    (turtle-forward! turtle 50)
    (turtle-turn! turtle 120)
    (turtle-forward! turtle 50)
    (turtle-turn! turtle 120)
    (turtle-forward! turtle 50)))
(define six-point-star
  (lambda (turtle)
    