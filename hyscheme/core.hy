(defun null? [x]
  "Function checks if given list is empty list and returns `true' else
  returns `false'"
  (cond
   [(and (not (isinstance x list))
         (not (isinstance x tuple))) false]
   [(> (len x) 0) false]
   [true true]))

(defun pair?[x]
  "Function checks if `x' is a list or tuple and returns `true' else
  returns `false'"
  (cond
   [(and (or (isinstance x list) (isinstance x tuple))
             (not (null? x))) true]
   [true false]))

(defun zero? [x]
  "Function equivaent of null? for numbers, returns `true' if x is
  zero"
  (cond
   [(or (= x 0) (= x 0.0) (= x -0)) true]
   [true false]))

(defun add1 [x]
  "Function increments `x' by 1"
  (+ x 1))

(defun sub1 [x]
  "Function decrements `x' by 1"
  (- x 1))
