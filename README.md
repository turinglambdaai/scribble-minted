# scribble/minted

A small Scribble library with support for rendering code using `pygmentize`.
These elements can be added using the `minted` and `mintinline` commands from
this library.
This mixin supports the LaTeX, PDF, and HTML backends.

I have not thoroughly tested this.

## Example

Put the following in `meow.scrbl`.
```racket
#lang scribble/base
@(require scribble/minted)

@title{Ohh pretty}
@; Specify new default style
@(current-pygmentize-default-style 'colorful)

@; Or specify style as an option (not actually locally scoped, though)
@minted["coq" #:options '((linenos . true) (style . colorful)]{
Inductive Vec {A : Set} : nat -> Set :=
| nil : Vec 0
| cons : forall {n:nat}, A -> Vec n -> Vec (1 + n).
}

This is a Coq expression @mintinline["coq"]{cons 0 nil}.
```

Run `scribble`, with multiple backends.

`scribble --pdf meow.scrbl`
`scribble --html meow.scrbl`

See pretty code!

## Install
`raco pkg install scribble-minted`

Install [Pygments](https://pygments.org/) to get syntax highlighting:
`pygmentize` must be installed and in your `PATH` (or set the
`current-pygmentize-path` parameter to its location). Without it,
documents still build, but code is rendered as plain unhighlighted
text (with a warning).
