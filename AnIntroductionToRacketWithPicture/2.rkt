#lang slideshow

circle

(define (square n)
  (filled-rectangle n n))

(define (series-1 mk)
  (hc-append 4 (mk 5) (mk 10) (mk 20) (mk 40)))

(series-1 circle)

(define series-2
  (lambda (mk)
    (hc-append 4 (mk 5) (mk 10) (mk 20) (mk 40))))

(series-2 circle)

(define (rgb-series mk)
  (vc-append
   (series-1 (lambda (sz) (colorize (mk sz) "red")))
   (series-1 (lambda (sz) (colorize (mk sz) "blue")))
   (series-1 (lambda (sz) (colorize (mk sz) "black")))))

(rgb-series circle)
(rgb-series square)

(define (rgb-maker mk)
  (lambda (sz)
    (vc-append (colorize (mk sz) "red")
               (colorize (mk sz) "green")
               (colorize (mk sz) "blue"))))

(series-1 (rgb-maker circle))
(series-1 (rgb-maker square))