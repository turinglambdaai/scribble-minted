#lang setup/infotab

(define version "0.4.1")

(define collection 'multi)

(define pkg-desc "Pygments-based syntax highlighting for Scribble")

(define deps '("scribble-minted-lib" "scribble-minted-doc"))
(define implies '("scribble-minted-lib" "scribble-minted-doc"))
