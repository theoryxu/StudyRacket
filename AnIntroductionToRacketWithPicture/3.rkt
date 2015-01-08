#lang slideshow

(define (square n)
  (filled-rectangle n n))

(list "red" "green" "blue")

(list (circle 10) (square 10))

(define (rainbow p)
  (map (lambda (color)
         (colorize p color))
       (list "red" "orange" "yellow" "green" "blue" "purple")))

(rainbow (square 5))

(apply vc-append (rainbow (square 5)))

(require pict/flash)

(filled-flash 40 30)

(require (planet schematics/random:1:0/random))
(random-gaussian)

(provide rainbow square)