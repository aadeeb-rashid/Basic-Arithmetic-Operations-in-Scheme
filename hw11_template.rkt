; Q1 (5 points)
; Enter your code here 
( - (+ (* 8 4) 3) 1)
( + (* (+ 2 8) (- (- 10 2) 5) ) 15)
(* 9 (- (+ (/ 32 8) 5) (* 3 ( + 7 9))))
(* 3 (+ 9 (* (+ 2 (- (/ 36 4) (* 2 5))) (- 10 2))))
(- (/ (- (* (* (* (+ 4 6) (+ 6 4)) 2) 2) 10) 2) (+ (/ (* 3 (+ (* 4 5) (* 6 4))) 2) (* 4 5)))
; Q2 (5 points)
(define (Product x y) 
  ; Enter your code here
 (* x y)
  )

(Product 10 40)

; Q3 (5 points)
(define Power (lambda(x n)
; Enter your code here
  (if (= n 0)
      1
  (Product x (Power x (- n 1)))
  )
 ))
(Power 2 5)

; Q4: Please enter test values 2 and 5. It should return 32. (5 points)
(display "Enter 2 5 as test case. It returns 32")
(newline)
(define (ReadForPower) 
; Enter your code here
  (Power (read)(read))
  )

(ReadForPower)

; Q5 (5 points)
(define (ProductPowers x y z w)
; Enter your code here
(Product (Power x y) (Power z w))
  )

(ProductPowers 2 5 3 4)

;Q6 (5 points)
(define (ProductLet x y)
; Enter your code here
(let ((a x) (b y))
  (* a b))
 )


(ProductLet 60 40)

; Q7 (10 points)
(define (Letexpression)
; Enter your code here
(let ((two 2) (three 3) (four 4) (five 5) (six 6) (ten 10))
(- (/ (- (* (* (* (+ four six) (+ six four)) two) two) ten) two) (+ (/ (* three (+ (* four five) (* six four))) two) (* four five)))
))
(Letexpression)

; Q8: Enter values 1 2 3 4 5 6 7 8, and it should return 20. (10 points)
; Enter your code here
(define accumulator (lambda (evensum next)
   (if(not(number? next))
      evensum
   (if (even? next)
      (accumulator (+ evensum next) (read))
      (accumulator evensum (read)))
   )))

(display "Enter 1 2 3 4 5 6 7 8 and e, and it returns 20.")
(newline)
(accumulator 0 0) 