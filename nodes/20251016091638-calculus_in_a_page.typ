#let _ = ```typ
exec typst c "$0" --root "$(readlink -f "$0" | xargs dirname)/./" --input file-1=/20251016091638-calculus_in_a_page/derivative.png --input file-0=/20251016091638-calculus_in_a_page/xplus4.png
⁠```
#set document(title: "Calculus in a page")
#set text(lang: "en")
#heading([#context{document.title}])
#outline()
#set heading(numbering: "1.")
There are three fundamental concepts in calculus. That\u{27}s it! So if you
know these three concepts, other math concepts that depend upon these concepts
should be possible to learn. For example, the #link("https://en.wikipedia.org/wiki/Z-test")[Z\u{2d}test] #footnote(link("https://en.wikipedia.org/wiki/Z-test")) and the #link("https://en.wikipedia.org/wiki/Chi-squared_test")[Chi\u{2d}squared] #footnote(link("https://en.wikipedia.org/wiki/Chi-squared_test")) test
both depend upon #text(weight: "bold", [integration]), one of the three concepts, to work.


Calculus is a hard #emph[class], not a hard #emph[subject]. The class is hard because the fundamental
concepts are padded with lots of difficult algebra. There is usually lots of memorization of formulas and
procedures to solve specific equations. Luckily, we don\u{27}t have to worry about any of that.


So, to get right into it, here are the three concepts:
#enum(enum.item(1)[Limits (sometimes taught in pre\u{2d}calc)],
enum.item(2)[Derivation],
enum.item(3)[Integration],
)
#heading(level: 1)[function review] #label("org39b3024")
A function is a set of operations that takes input(s) and returns an output. These are an #text(weight: "bold", [extremely important]) computer
science concept, but are also present in math.

In math, a function is defined like so:

Error at (line 2, column 2):
unexpected end of input
expecting \end{equation}

 ^
f(x) = x\u{2b}4
Error at "source" (line 1, column 1):
unexpected Tok (line 1, column 1) (CtrlSeq "end") "\\end"
expecting end of input{equation

This function $f$ takes 1 input and returns that input plus 4.

In R, the same function can be defined like so:

#figure([#raw(block: true, lang: "R", "f <- function(x){
  x+4
}

f(5) # returns 9
f(3) # returns 7")]) #label("orgc4c7004")

#raw(block: false, "7")


Feel free to give it a try!
#heading(level: 1)[Limits] #label("orgdc60d92")
With functions, there are certain values that can\u{27}t be plugged in to the function. For example, $oo$. In math,
$oo$ is not a number, so $oo + 4$ doesn\u{27}t really mean anything. Instead, to define what happens in this
case, there is a concept called the #text(weight: "bold", [limit]).

So, while we can\u{27}t do $f \( oo \)$, we #emph[can] do $ lim_(x arrow.r oo) f \( x \) $. This
is basically saying, as the values for x get bigger and bigger, what happens to the output?
In this case, the answer is $ lim_(x arrow.r oo) f \( x \) = lim_(x arrow.r oo) x + 4 = oo $. This should hopefully make sense, $4 + oo$ is still $oo$.

Here is a 20 minute video on just limits if you want: #link("https://www.youtube.com/watch?v=G4LOp6PhBKM")[What is a limit in calculus?] #footnote(link("https://www.youtube.com/watch?v=G4LOp6PhBKM"))
#heading(level: 1)[Derivation (derivatives)] #label("org83bda4b")
The reason we need to know about limits is that derivatives are defined as this: $ L = lim_(h arrow.r 0) frac(f \( a + h \) - f \( a \), h) $

Notice the limit notation. $a$, represents all points in the #emph[domain] of $f \( x \)$. So any valid value for $x$ can be plugged
in for $a$. Luckily, you don\u{27}t have to memorize this (woohoo!). Instead, I\u{27}ll describe what this formula means, then I\u{27}ll
show a trick to do this formula without any algebra.

So what does this formula give you? Take our equation from before \(f(x) = x\u{2b}4)\. The plot of this line might look like
this:

#figure([#image(sys.inputs.file-0)]) #label("orge8a5599")


The plot of the derivative, however, looks like this:

#figure([#image(sys.inputs.file-1)]) #label("orgf40e151")


If you looked carefully, you might have noticed that the line in the derivative plot
is equal to the #emph[slope] of the line in #ref(label("orge8a5599"))
