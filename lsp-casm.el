;
;   Copyright (C) 2017-2024 CASM Organization <https://casm-lang.org>
;   All rights reserved.
;
;   Developed by: Philipp Paulweber et al.
;   <https://github.com/casm-lang/casm-lang.plugin.emacs/graphs/contributors>
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

(require 'lsp-mode)
(require 'casm-mode)

(lsp-define-stdio-client lsp-casm
			 "casm"
			 #'(lambda () default-directory)
			 '("casmd"
			   "lsp"
			   "--stdio"
			   )
			 :ignore-regexps
			 '("^casmd: reading on stdin, writing on stdout$")
			 )

(provide 'lsp-casm)
