;
;   Copyright (C) 2017-2019 CASM Organization <https://casm-lang.org>
;   All rights reserved.
;
;   Developed by: Philipp Paulweber
;                 <https://github.com/casm-lang/casm-lang.plugin.emacs>
;
;   This file is part of casm-lang.plugin.emacs.
;
;   casm-lang.plugin.emacs is free software: you can redistribute it and/or modify
;   it under the terms of the GNU General Public License as published by
;   the Free Software Foundation, either version 3 of the License, or
;   (at your option) any later version.
;
;   casm-lang.plugin.emacs is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;   GNU General Public License for more details.
;
;   You should have received a copy of the GNU General Public License
;   along with casm-lang.plugin.emacs. If not, see <http://www.gnu.org/licenses/>.
;


;; -----------------------------------------------------------------------------
;; CASM syntax highlighting configuration (copy this to your emacs config file)
;; -----------------------------------------------------------------------------
;;
;; (load "<PATH-TO_REPO>/casm-mode.el")
;; (add-to-list 'auto-mode-alist '("\\.casm\\'" . casm-mode))
;;


(setq casm-types
  '("Integer" 
    "Bit" 
    "Boolean" 
    "String" 
    "Floating" 
    "Rational" 
    "enum"
    ;; TODO
    )
  )

(setq casm-constants
  '("undef" 
    "false" 
    "true" 
    "self"
    )
  )

(setq casm-builtins
  '("asBoolean" 
    "asBit" 
    "asInteger"
    ;; TODO
    )
  )

(setq casm-function-names
  '( "CASM"
     "init"
     "initially"
     "defined"
     "derived"
     "function"
     "rule"
     )
  )

(setq casm-keywords
  '( "if"
     "then"
     "else"
     "call"
     "forall"
     "do"
     "in"
     "let"
     "debug"
     "print"
     "assert"
     "case"
     "of"
     "default"
     "_"
     "skip"
     "and"
     "or"
     "xor"
     "not"
     )
  )

(setq casm-regexp-keywords  (regexp-opt casm-keywords 'words))
(setq casm-regexp-types     (regexp-opt casm-types 'words))
(setq casm-regexp-constants (regexp-opt casm-constants 'words))
(setq casm-regexp-builtins  (regexp-opt casm-builtins 'words))
(setq casm-regexp-function-names (regexp-opt casm-function-names 'words))

(setq casm-mode-font-lock
      '(
        (,casm-regexp-function-names . font-lock-function-name-face)
        (,casm-regexp-constants . font-lock-constant-face)
        (,casm-regexp-types . font-lock-type-face)
        (,casm-regexp-builtins . font-lock-builtin-face)
        (,casm-regexp-keywords . font-lock-keyword-face)
	)
      )

(define-derived-mode casm-mode fundamental-mode
  "CASM mode"
  "Major mode for editing CASM (Corinthian Abstract State Machine) files."
  (setq font-lock-defaults '((casm-mode-font-lock)))
  (setq-default indent-tabs-mode nil)
  (setq tab-width 4)
  )


(setq casm-regexp-keywords 	 nil)
(setq casm-regexp-types    	 nil)
(setq casm-regexp-constants	 nil)
(setq casm-regexp-builtins 	 nil)
(setq casm-regexp-function-names nil)

(setq casm-keywords 	 nil)
(setq casm-types    	 nil)
(setq casm-constants	 nil)
(setq casm-builtins 	 nil)
(setq casm-function-names nil)


(provide 'casm-mode)
