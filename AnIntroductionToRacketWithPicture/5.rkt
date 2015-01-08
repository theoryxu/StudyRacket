#lang slideshow

(require racket/class
         racket/gui/base)

(require slideshow/code)

(code (circle 10))

(define-syntax pict+code
  (syntax-rules ()
    [(pict+code expr)
     (hc-append 10
                expr
                (code expr))]))


(pict+code (circle 10))

(define f (new frame% [label "My Art"]
               [width 300]
               [height 300]
               [alignment '(center center)]))

(send f show #t)

(define (add-drawing p)
  (let ([drawer (make-pict-drawer p)])
    (new canvas% [parent f]
         [style '(border)]
         [paint-callback (lambda (self dc)
                           (drawer dc 0 0))])))

(add-drawing (pict+code (circle 10)))
