#lang slideshow

(circle 10)
(circle 20)
(rectangle 10 20)

(hc-append (circle 10) (rectangle 10 20))

(define r (circle 30))
(define c (rectangle 20 30))

(hc-append 20 c r c)

(define (square n)
  (filled-rectangle n n))

(square 10)

(define (four p)
  (define two-p (hc-append p p))
  (vc-append two-p two-p))

(four (circle 20))

(define (checker p1 p2)
  (let ([p12 (hc-append p1 p2)]
        [p21 (hc-append p2 p1)])
    (vc-append p12 p21)))

(checker (colorize (square 20) "red")
         (colorize (square 20) "black"))

(define (checkerboard p)
  (let* ([rp (colorize p "red")]
         [bp (colorize p "black")]
         [c (checker rp bp)]
         [c4 (four c)])
    (four c4)))

(checkerboard (square 10))