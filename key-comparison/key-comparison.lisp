(defpackage :key-comparison
  (:use :cl)
  (:export
   :key-object-identity
   :key-numbers
   :key-numbers-of-different-types
   :key-characters
   :key-characters-case-insensitively
   :key-strings
   :key-strings-case-insensitively
   :key-conses-of-symbols
   :key-conses-of-characters
   :key-conses-of-numbers
   :key-conses-of-characters-case-insensitively
   :key-conses-of-numbers-of-different-types
   :key-arrays
   :key-arrays-loosely))
(in-package :key-comparison)

(defun key-object-identity (x y)
  (eq x y))
(defun key-numbers (x y)
  (eq x y))
(defun key-numbers-of-different-types (x y)
  (equalp x y))
(defun key-characters (x y)
  (eq x y))
(defun key-characters-case-insensitively (x y)
  (equalp x y))
(defun key-strings (x y)
  (equal x y))
(defun key-strings-case-insensitively (x y)
  (equalp x y))
(defun key-conses-of-symbols (x y)
  (equal x y))
(defun key-conses-of-characters (x y)
  (equal x y))
  
(defun key-conses-of-numbers (x y)
  (equal x y))

(defun key-conses-of-characters-case-insensitively (x y)
  (equalp x y))

(defun key-conses-of-numbers-of-different-types (x y)
  (equalp x y))

(defun key-arrays (x y)
  (eql x y))
(defun key-arrays-loosely (x y)
  (equalp x y))

;eq = memory equality
;eql array structural equality
;equal list and string structural equality
;equalp case insensitive along with type conversion