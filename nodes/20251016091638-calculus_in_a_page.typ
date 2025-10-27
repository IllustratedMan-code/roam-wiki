#let _ = ```typ
exec typst c "$0" --root "$(readlink -f "$0" | xargs dirname)/./" --input file-5=/20251016091638-calculus_in_a_page/ztable.png --input file-4=/20251016091638-calculus_in_a_page/normal.png --input file-3=/20251016091638-calculus_in_a_page/area2.png --input file-2=/20251016091638-calculus_in_a_page/area.png --input file-1=/20251016091638-calculus_in_a_page/derivative.png --input file-0=/20251016091638-calculus_in_a_page/xplus4.png
⁠```
#set document(title: "Calculus in a few pages")
#set text(lang: "en")
#import "@local/assignments:1.0.0": conf
#show: doc => conf(title: context{document.title}, doc)
#outline()
#set heading(numbering: "1.")
#set image(width: 60%)

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
#heading(level: 1)[function review] #label("org1d314e5")
A function is a set of operations that takes input(s) and returns an output. These are an #text(weight: "bold", [extremely important]) computer
science concept, but are also present in math.

In math, a function is defined like so:

$ f \( x \) = x + 4 $

This function $f$ takes 1 input and returns that input plus 4.

In R, the same function can be defined like so:

#figure([#raw(block: true, lang: "R", "f <- function(x){
  x+4
}

f(5) # returns 9
f(3) # returns 7")]) #label("orgcfb31b4")

#raw(block: false, "7")


Feel free to give it a try!
#heading(level: 1)[Limits] #label("org50efaad")
With functions, there are certain values that can\u{27}t be plugged in to the function. For example, $oo$. In math,
$oo$ is not a number, so $oo + 4$ doesn\u{27}t really mean anything. Instead, to define what happens in this
case, there is a concept called the #text(weight: "bold", [limit]). In essence, it means to evaluate a function as you get infinitely close to
a chosen value.

So, while we can\u{27}t do $f \( oo \)$, we #emph[can] do $ lim_(x arrow.r oo) f \( x \) $. This
is basically saying, as the values for x get bigger and bigger, what happens to the output?
In this case, the answer is $ lim_(x arrow.r oo) f \( x \) = lim_(x arrow.r oo) x + 4 = oo $. This should hopefully make sense, $4 + oo$ is still $oo$.

Here is a 20 minute video on just limits if you want: #link("https://www.youtube.com/watch?v=G4LOp6PhBKM")[What is a limit in calculus?] #footnote(link("https://www.youtube.com/watch?v=G4LOp6PhBKM"))
#pagebreak()
#heading(level: 1)[Derivation (derivatives)] #label("org99c0b21")
The reason we need to know about limits is that derivatives are defined as this: $ L = lim_(h arrow.r 0) frac(f \( a + h \) - f \( a \), h) $

Notice the limit notation. $a$, represents all points in the #emph[domain] of $f \( x \)$. So any valid value for $x$ can be plugged
in for $a$. Luckily, you don\u{27}t have to memorize this (woohoo!). Instead, I\u{27}ll describe what this formula means, then I\u{27}ll
show a trick to do this formula without any algebra.

So what does this formula give you? Take our equation from before \(f(x) = x\u{2b}4)\. The plot of this line might look like
this:

#figure([#image(sys.inputs.file-0)], caption: [The plot of f(x) = x+4]) #label("org8e210a8")


The plot of the derivative, however, looks like this:

#figure([#image(sys.inputs.file-1)], caption: [The plot of the derivative of f(x) = x+4]) #label("org674ff77")


If you looked carefully, you might have noticed that the line in #ref(label("org674ff77"))
is equal to the #emph[slope] of the line in #ref(label("org8e210a8")). This is what the \u{22}derivative\u{22} of
a function means. It is just another function (we\u{27}ll call it $f' \( x \)$) where any value
that is plugged in will return the slope of the value returned by $f \( x \)$.

So if we remember how to calculate slope using $y = m x + b$, you\u{27}ll notice that $m$, the slope, is 1 when $y = x + 4$.

In summary, the derivative is just a way to calculate the slope of any point on a function line.

So, how do we calculate the derivative without doing algebra?

If you have a function that looks like this:

$ f \( x \) = x^2 $

Then the derivative would look like this:

$ f \( x \) = 2 x $

So, to break this down, the exponent (2) is multiplied by the term (x), then the exponent is subtracted by 1.

In the case of multiple terms, as in a polynomial, this treatment is done for each term.

$ f \( x \) = x^2 + 2 x + 5 arrow.r 2 x + 2 + 0 = f' \( x \) $

Notice that the 5 evaluates to 0 because there is no variable (x). This is important, because
information is lost between a function and its derivative!

That it!

Here is a video from Khan academy with the basic concept (7 minutes): #link("https://www.youtube.com/watch?v=N2PpRnFqnqY")[Derivative as a concept] #footnote(link("https://www.youtube.com/watch?v=N2PpRnFqnqY"))
#heading(level: 1)[Integration (Integrals)] #label("orge90b4fa")
We\u{27}re almost done with calculus!

An Integral is just a derivative in reverse. It is really that simple!

But remember, we lost information when doing the derivative, and there isn\u{27}t a way to get
that info back. So if the derivative of $f \( x \) = x + 4$ is $1$, then when we do the integral,
we have no way of knowing that the 4 existed. So the integral of $1$ is $x + C$. $C$ is
just a \u{22}constant\u{22}, or any value that doesn\u{27}t contain a variable.

Integrals are written like this:

$ integral f \( x \) d x $


While integrals are just a reverse derivatives, an integral of a function is equal to the
area under the line given by the original function. For example, the integral of $x + 4$
actually returns the solid area of this graph:

#figure([#image(sys.inputs.file-2)]) #label("org14fcc88")

If we wanted to calculate the area of the region between 0 and 5, we can use a #text(weight: "bold", [definite]) integral.

With a definite integral, we ignore $C$, and plug in a value for x twice, once with the big value (5) and once with the small value(0). These terms are then
subtracted.

$ integral_0^5 x + 4 d x arrow.r 1 / 2 \( 5 \)^2 - 1 / 2 \( 0 \)^2 arrow.r 12.5 $

This gives us the area shown below:


#figure([#image(sys.inputs.file-3)]) #label("org4c59c73")


If you didn\u{27}t catch on, the trick to doing an integral without any algebra is to just do the derivative trick in reverse. Add one to the exponent and divide the term by that exponent.


In summary, integrals are reverse derivatives and can be used to find the area under the line given by a function.
#heading(level: 1)[Connections to statistics] #label("org3cd8438")
So how does this relate to statistics? Well, random data usually fits some sort of distribution. For example, human heights usually fit into
what is called the \u{22}normal\u{22} distribution. What this means is that if you were to take all the humans in the world and plot their heights on
a bar chart, it would look something like this:

#figure([#image(sys.inputs.file-4)]) #label("org3c4fac1")


The equation of the line (not the filled in area) for this distribution looks like this:

$ f \( x \) = 1 / sqrt(2 pi sigma^2) e^(- frac(\( x - mu \)^2, 2 sigma^2)) $

This equation is big and scary, but notice how there are now two extra symbols $mu$, the mean
and $sigma$, the standard deviation. R has built in functions for both of these: #raw("mean()") and
#raw("sd()").

Here is an interactive normal distribution so you can see how these values change how the normal distribution
looks: #link("https://istats.shinyapps.io/NormalDist/")[Interactive Normal Distribution] #footnote(link("https://istats.shinyapps.io/NormalDist/")). Fyi, it is written in R!


Say you wanted to calculate the probability that someone has a height less than 6 feet.

The way you would normally do this is through a Z table. So say that the average height is 5 feet and
the standard deviation is 1 foot. The Z score is given by this formula:

$ Z = frac(X - mu, sigma) = frac(6 - 5, 1) = 1 $

You would take this Z value and look up the value in a #emph[cumulative Z table]. This would then
give you your probability. Here is how you might do it in R

#figure([#raw(block: true, lang: "R", "mean <- 5
x <- 6
standard_deviation <- 1

Z <- (x - mean)/standard_deviation

pnorm(Z) # cumulative Z table lookup")]) #label("org3ad72fa")

#raw(block: false, "0.841344746068543")



This gives us a probability of 84 percent. P values are often calculated in a similar way. Instead
of an observation like \u{22}the probability of a height less than 6 feet\u{22}, it is the probability of a hypothesis
being true. So something like \u{22}all humans have a height less than 6 feet\u{22} has a probability of 84% of being true.
This is a P value of $\( 1 - 0.84 \) = 0.16$, which is pretty bad. medicine usually uses a p value cutoff of 0.01,
which is a 99% probability that their hypothesis is true.

But how does this relate to calculus? Well, something that always frustrated me was understanding
what the Z table was actually giving me. It turns out, that the Z table is actually an #text(weight: "bold", [integration]) of
the equation for a normal distribution! Specifically, a cumulative Z table, like the one we used, is a definite
integral from $- oo$ to the Z value. So when you look up the value 1, what you\u{27}re actually doing is finding
the area of the solid part of this plot:

#figure([#image(sys.inputs.file-5)]) #label("org67f5bca")


It is important to note that this only works if the data actually fits the normal\u{2f}Gaussian distribution.
So you aren\u{27}t just gambling that your hypothesis is true, but also that your data fits your chosen distribution.

You might be wondering, if the Z table is just an integration, why do we need a table? can\u{27}t we just do the integral
and use that formula? The answer is that it is actually impossible to
symbolically integrate the formula for the normal distribution. So no, you couldn\u{27}t even do the algebra even if you wanted to!

Instead, the computer estimates the answer through
a technique called #link("https://en.wikipedia.org/wiki/Numerical_integration")[Numerical Integration] #footnote(link("https://en.wikipedia.org/wiki/Numerical_integration")). The Z table is just a table of pre\u{2d}computed estimations. Statistics
is full of these integrals. So it isn\u{27}t even useful to learn the algebraic techniques, because
the computer doesn\u{27}t use them anyway.
#heading(level: 1)[The Physics connection] #label("org79a4064")
Calculus is also deeply connected to physics. Velocity, for example, is actually the derivative of position.
Acceleration is the derivative of velocity.

So, if we assume a constant acceleration due to gravity, we can actually get the equation for position using integrals!

#list(list.item[acceleration = $f \( x \) = 9.8$])#list(list.item[velocity = $f \( x \) = 9.8 x + C = 9.8 x + 1$: C is our initial velocity (we\u{27}ll set it to 1)])#list(list.item[position = $f \( x \) = 4.9 x^2 + 1 x + C$: C is our initial position])

Pretty neat!
