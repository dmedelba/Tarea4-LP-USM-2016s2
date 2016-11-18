#lang scheme

;;Define un contador para saber cuantas veces se ha llamado la funcion.
(define contador 0)

(define (impar func)
  (lambda (n)
    (set! contador (+ contador 1) )
    (cond
      ((= (modulo contador 2) 0) n)
        (else  (func n) )    
        )
    ))



