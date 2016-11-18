#lang scheme

;;(cubo x)
;;Realiza la operacion de x al cubo

(define cubo (lambda (x) (* x x x)))
      
(define sumar-cubos
    (lambda (ls)
        (cond
          ((null? ls) 0)
          (else
           (let sumar ((lista ls)(suma 0))
             (if(null? lista)
                suma
                (sumar (cdr lista) (+ suma (cubo(car lista))))
                )
          
          )
      )
  )))




