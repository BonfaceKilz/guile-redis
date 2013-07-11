;;; (redis commands connection) --- redis module for Guile.

;; Copyright (C) 2013 Aleix Conchillo Flaque <aconchillo@gmail.com>
;;
;; This file is part of guile-redis.
;;
;; guile-redis is free software; you can redistribute it and/or
;; modify it under the terms of the GNU Lesser General Public
;; License as published by the Free Software Foundation; either
;; version 3 of the License, or (at your option) any later version.
;;
;; guile-redis is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; Lesser General Public License for more details.
;;
;; You should have received a copy of the GNU Lesser General Public
;; License along with guile-redis; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
;; 02110-1301 USA

;;; Commentary:

;; Redis module for Guile

;;; Code:

(define-module (redis commands connection)
  #:use-module (redis utils)
  #:use-module (redis commands define)
  #:export (auth echo ping quit select))

(define (auth password)
  (make-command "AUTH" read-status password))

(define (echo message)
  (make-command "ECHO" read-bulk message))

(define (ping)
  (make-command "PING" read-status))

(define (quit)
  (make-command "QUIT" read-status))

(define (select index)
  (make-command "SELECT" read-status index))

;;; (redis commands connection) ends here
