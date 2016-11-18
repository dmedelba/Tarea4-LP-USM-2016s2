#lang scheme

;variable flag global que podra tomar valores 0 o 1 en pesomovil
(define flag 0)

(define pesomovil
  (lambda (arbol)
    (cond
      ((null? arbol)0)
      (else
       (let recorrer( (Peso (car arbol)) (izq (car(cdr arbol))) ( der (car(cdr(cdr arbol)))))
         (cond
           ((and(null? izq)(null? der)) Peso)
           ((null? izq) (set! flag 1) 0 )
           ((null? der) (set! flag 1) 0 )
           ((and (= (recorrer(car izq)(car (cdr izq))(car (cdr (cdr izq)))) (recorrer(car der)(car(cdr der)) (car (cdr (cdr der))))) (= flag 0))
                      (+ Peso (recorrer(car izq)(car (cdr izq)) (car (cdr (cdr izq))))
                         (recorrer(car der)(car(cdr der)) (car (cdr (cdr der)))) ))
           (else
            (cond
              ((and (eqv? izq (car(cdr arbol))) (eqv? der (car(cdr(cdr arbol)))))  '())
              (else (set! flag 1) 0))
           )
           )
         )
       )
      )))

