#lang scheme

; Metodo iteracion (do)
(define goferkiter
  (lambda (n)
    (cond ((= n 0 )0)
          ((= n 1 )1)
          (else(do ( (k 2 (+ k 1))
               ( A0 0 (+ A1 0) )
               (A1 1 (+ k (- A1 A0)))
               )
           ((= k (+ n 1)) A1)
           )))
  )
  )

; Recursiva de cola
(define goferkcola 
    (lambda (n)
        (cond
          ((= n 0) 0)
          ((= n 1) 1)
          (else
            (let gofer ((k 1) (A1 1) (A0 0))
                (if (= k n)
                    A1
                    (gofer (+ k 1)  (+ 1 k (- A1 A0)) A1)
             ))))))
