#lang scheme

;;(factorial  n)
;;Obtiene el factorial de n , de la forma n*n-1* n-2*.... 1

(define factorial(lambda (n)
(let fact ((i n) (a 1))
  (if (= i 0)a
      (fact (- i 1) (* a i))))))

;;(nSobrek n k)
;;Se obtiene la operacion n sobre k, segun la formula.

(define nSobrek
  (lambda (n k)
    (/(factorial  n)(* (factorial k) (factorial (- n k))))
  ))
    

(define binomsimple
(lambda (x y n)
  (cond
    ((= n 0) 0)
    ((= n 1) (+  x y))
    ((> n 1) (* (+ x y)(binomsimple x y (- n 1))
          )
    )
  )
  ))
                 

(define binomcola
  (lambda (x y n)
    (let binom ((k 0) (suma 0))
      (cond
        ((> k n) suma)
        (else (binom (+ k 1) (+ suma (* (nSobrek n k) (* (expt x (- n k)) (expt y k)))))
              )))))

