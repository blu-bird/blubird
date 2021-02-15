# blubird
Bryan Lu's LaTeX Package (and other stuff) 

## Instructions for Use
**For making handouts:** download blubase.sty and blubird.sty. Use class scrartcl in your document and include `\usepackage{blubird}` in your preamble. 

**For writing up problem sets:** download blubase.sty, problemset.cls. Use document class problemset, and include `\studname{<your name>}`, `\studmail{<your email>}`, `\coursename{<course name>}`, `\duedate{<the date>}`, and `\hwNo{<problem set #>}` in the preamble. The template ps-template.tex is recommended as it automatically fills in these fields. 

## Summary of Contents
*Note: A lot of this package reimplements the functionality of the `physics` package in LaTeX. I've been told that package sucks so I've included most of those macros explicitly and extended them to be more flexible.*

This is not meant to be a complete listing; but the following describes at a high level what kinds of commands are included in this package: 

**BIG NOTE: Redefinition of `\bf`:** You shouldn't be using this anyway for good-practice reasons, so I've repurposed it to be the shorthand for `\mathbf`. 

### Sets of Numbers
All common sets of numbers (the naturals, integers, rationals, reals, complex, etc.) have macros. For example, the integers are `\ZZ`. The set of n x m matrices also now has a shortcut - Mat(n, m) can be written as `\mat(n, m)`.

### Complex Number Operators
Real and imaginary part operators don't look super ugly, capitalized for principal-valued functions for Log and Arg. 

### Combinatorics
Implemented from the TJ Concrete Math (Spring 2019) class. Lots of commands dedicated to Knuth's Stirling number notation (for both the first and second kinds). 

### Calculus and Calculus Operators 
Lots of commands to abbreviate derivatives, partial derivatives, and mixed partials. Has vector operators for the gradient, curl, divergence, and Laplacian. 

### Physics Shenanigans
Has stuff for the Lagrangian and Hamiltonian and other things in the cool, swirly `mathcal` font. 

### Dirac Notation and Commutators
Supports all that jazz, from my (incomplete) transcription of TJ Quantum/Electrodynamics (2018-2019) class notes. 

### MATH 2230/40 Notation
Any other notation that's not the above stuff that appears in Hubbard (5th ed.) from Chapters 0-2 is in here. Some notes: 
* Chapter 0/Other: 
  * I prefer `\varepsilon` to `\epsilon`, so the former is abbreviated as `\eps`.
* Chapter 1: 
  * The Jacobian and derivative of a function as in 1.7 are automatically in brackets to indicate they are matrices. Uses `mathcal` font.
  * Interior, closure, and boundary symbols added. 
  * Abbreviations for starting/ending matrices. Separate commands for inline matrices and display-style matrices. 
* Chapter 2: 
  * Augmented matrices (both parenthesis and bracket delimiters) added
  * span is now `\spn`, image is `\im`. (Hubbard's notation uses img for the image, I prefer im)
  * dimension is `\dim`, kernel is `\ker`, which are both implemented by default
  * added notation for change of basis matrix 
  * "Divided matrices" (both parenthesis and bracket delimiters) when computing matrix inverses added
* Chapter 3: 
  * the trace of a matrix finally implemented as `\tr`!
  * Taylor series notation added. First argument is the function $f$; the second, the order of the polynomial $n$; and the third, the center of the series $\mathbf{a}$. 
  * because not even Hubbard can decide which way the indices go for the multi-exponents, I have made the executive decision to make `\multexp{n}`, the set of all multi-exponents in `n` variables, have the `n` as the subscript. If you don't like it, change it. 
  
*(from here onward, this uses Prof. Manning's notation/whatever notation is appropriate)*
* Chapter 4: 
  * indicator function $\mathbf{1}$, with argument for the region for which the function is 1. 
  * the volume function `\vol` for the volume of various regions
  * the symbol for the set of dyadic pavings, `\dpav`, with one argument for the order $N$ of the paving.

