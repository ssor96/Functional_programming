(defun ��������2 (g a x)
(if (= (length x) 0) a
  (��������2 g (funcall g a (first x)) (rest x))))
