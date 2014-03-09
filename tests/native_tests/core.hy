(import [hyscheme.core [*]])

(defn test-null? []
  "CORE: testing null?"
  (assert (null? []))
  (assert (null? ()))
  (assert (not (null? 1)))
  (assert (not (null? "foo")))
  (assert (not (null? {})))
  (assert (not (null? [1 2 3])))
  (assert (not (null? (, 1 2 3))))
  (assert (not (null? {1 2 3 4})))
  ;; Yeah even None type is not null we are following pure scheme
  ;; which doesn't has None type
  (assert (not (null? nil))))

(defun test-pair? []
  "CORE: testing pair?"
  (assert (pair? [1 2 3]))
  (assert (pair? (, 1 2 3)))
  (assert (not (pair? [])))
  (assert (not (pair? ())))
  (assert (not (pair? {})))
  (assert (not (pair? {1 2 3 4})))
  (assert (not (pair? "foo")))
  ;; Yeah even None type is not pair hence becomes perfect candidate
  ;; for being a *atom*
  (assert (not (pair? nil))))

(defun test-zero?[]
  "CORE: test zero?"
  (assert (zero? 0))
  (assert (zero? 0.0))
  (assert (zero? -0))
  (assert (not (zero? 1456)))
  (assert (not (zero? 3.14)))
  (assert (not (zero? "foo"))))

(defun test-add1[]
  "CORE: test add1"
  (assert (= (add1 5) 6))
  (assert (= (add1 120) 121))
  (assert (= (add1 0) 1)))

(defun test-sub1[]
  "CORE: test sub1"
  (assert (= (sub1 5) 4))
  (assert (= (sub1 1) 0))
  (assert (= (sub1 18) 17))
  (assert (= (sub1 0) -1)))
