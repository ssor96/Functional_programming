(defun редукция2 (g a x)
(if (= (length x) 0) a
  (редукция2 g (funcall g a (first x)) (rest x))))
