#import "@preview/springer-spaniel:0.1.0" as springer-spaniel
#import springer-spaniel.ctheorems: *
#import springer-spaniel.gentle-clues: *

#import "@preview/physica:0.9.3": *

#let large-math(size: 12pt, body) = {
	show math.text: set text(size: size)
	body
}

#let larger-math(size: 16pt, body) = {
	show math.text: set text(size: size)
	body
}

#show: springer-spaniel.template(
	title: [Probability of Two People having the Same Birthday in a Room],
	authors: (
		(
			name: "Nyan Linn Htut",
			institute: "Hinthar Education",
			address: "Hinthar International School, Yangon, Myanmar",
			email: "quinc@nekonyan.fun"
		),
	),
	abstract: [
		The "birthday paradox" states that the probability of two individuals in a room of 23 people sharing the same birthday is slightly greater than 50%. While this phenomenon is well-established and proven, its presentation often includes vague qualifiers such as "around" or "just a little over." This paper seeks to derive the exact probability, providing a precise and universally accurate value applicable to all cases. Through detailed mathematical analysis, this study aims to offer a definitive answer to this intriguing probabilistic phenomenon.
	],
)

#pagebreak()

= Introduction <sec:2>
The birthday paradox is a well-known problem in probability theory that explores the likelihood of shared birthdays within a group. 

There are several variations of this paradox, two of which are frequently analyzed:

"What is the probability that at least two people in a group of $n$ people share the same birthday?" and

"If an individual enters a room with $n$ people, what is the probability that at least one person shares their birthday?"

Both scenarios are similar in their underlying methodology and can be addressed using the same approach. For the purposes of this paper, the focus will be on the first definition.

\

\
The traditional proof of the birthday paradox is commonly derived using the complement rule.

Rather than directly calculating the probability of at least one shared birthday, the probability of no shared birthdays is determined first. This result is then subtracted from $1$ to find the complement. This method is systematic and provides an intuitive framework for analyzing the problem.

== Traditional Proof <sec:2.1>
The probability that no two individuals in a group of $n$ people share a birthday can be calculated as follows:

The first individual can have any birthday without restriction, resulting in a probability of $1$.

The second individual must have a birthday distinct from the first. This probability is $364/365$, as there are $365$ possible days in a year, excluding the birthday of the first individual.

Similarly, the third individual must have a birthday distinct from the first two individuals. The probability of this is $363/365$.

This pattern continues, leading to the general expression for the probability that no two individuals share a birthday in a group of $n$ people:

$ P(n) = 1 dot 364/365 dot 363/365 dot dots dot (365 - n + 1)/(365) $

#pagebreak()

=== Complement Rule <sec:2.1.1>
To calculate the probability of at least one shared birthday, the complement rule is applied:

$ P'(n) = 1 - P(n) $

Here, $P'(n)$ represents the probability that at least one shared birthday exists within a group of $n$ people.

This approach is valid because the events "no shared birthdays" and "at least one shared birthday" are mutually exclusive and exhaustive. Therefore, their probabilities sum to $1$.

Substituting the expression for $P(n)$ into $P'(n)$ yields:

$ P'(n) = 1 - 1 dot 364/365 dot 363/365 dot dots dot (365 - n + 1)/(365) $

Simplifying the expression further, the probability of at least one shared birthday is expressed as:

$ P'(n) = 1 - (365 dot 364 dot 363 dot dots dot (365 - n + 1))/(365^n) $

Or equivalently:

$ P'(n) = 1 - (365!)/(365^n dot (365 - n)!) $

This formula provides the probability of at least one shared birthday in a group of $n$ people.

=== $n=23$ Case <sec:2.1.2>
When $n = 23$, the calculated probability is approximately $0.5073$, which is marginally greater than $50%$.

This result is frequently rounded to $50%$ for simplicity, giving rise to the common assertion that in a group of $23$ individuals, the probability of at least two individuals sharing a birthday is "around $50%$."

However, the more precise value is $0.5073$, which reflects a slightly higher probability.

#pagebreak()

=== Alternative Approaches <sec:2.1.3>
Although the complement rule is the most commonly employed method for proving the birthday paradox, alternative approaches are also available.  

One such method involves directly calculating the probability of two individuals sharing a birthday. While this approach is more complex, it remains equally valid.  

Another alternative uses the pigeonhole principle to provide an intuitive explanation of the paradox. This method conceptualizes "pigeons" as individuals with birthdays and "pigeonholes" as the days of the year, offering a straightforward way to understand the phenomenon.  

\
An alternative method can also employ combinatorics to derive the same result.  

The total number of ways to assign birthdays to $n$ people is $365^n$.  

The number of ways to assign birthdays such that no two individuals share a birthday is $365 dot 364 dot 363 dot dots dot (365 - n + 1)$.  

Thus, the probability of at least one shared birthday is expressed as follows:  

$ P(n) = 1 - (365 dot 364 dot 363 dot dots dot (365 - n + 1))/(365^n) $  

= Exact Probability <sec:3>
While the traditional proof is widely utilized, it has several inherent limitations.  

The traditional approach assumes a year consists of exactly $365$ days, thereby excluding individuals born on February 29 during leap years. While this assumption simplifies the calculations, it does not accurately reflect the real-world distribution of birthdays.  

It also assumes that all birthdays are equally likely, which does not align with actual patterns. For instance, certain months are associated with higher birth rates.  

Furthermore, the assumption that birthdays are independent events does not always hold in practice. Siblings, for example, may exhibit correlated birthdays due to shared cultural or familial factors. Similarly, specific environments, such as classrooms, may have unique patterns of shared birthdays influenced by enrollment timing.  

Finally, the approximation of $0.5073$ for $n = 23$ is frequently rounded to $50%$, leading to less precise interpretations.  

To address these limitations, an exact probability of two individuals sharing a birthday in a group of $n$ people can be derived.  

== Accounting for Leap Years <sec:3.1>
To improve accuracy, modifications can be made to account for leap years and individuals born on February 29.  

A leap year includes $366$ days, with February 29 as an additional day. To incorporate this, the number of days across four consecutive years can be considered:\ $365 + 365 + 365 + 366 = 1461$ days, accounting for three non-leap years and one leap year.  

In this model, the probabilities are no longer uniformly distributed across the days of the year, as February 29 has a lower likelihood compared to other days.  

\

Under this model, the probability of an individual being born on February 29 is $1/1461$, whereas the probability of being born on any other day (e.g., November 21) is $4/1461$.  

=== Case 1 (First person chosen is born on February 29) <sec:3.1.1>
The probability that the first individual is born on February 29 is $1/1461$.  

The probability that the second individual is born on a day other than February 29 is $1460/1461$.  

The third individual must also avoid February 29 and the four days already selected by the second individual. The probability for this is $1456/1461$.  

\
This pattern continues, resulting in the following expression for the probability that no two individuals in a group of $n$ people share a birthday:  

$ P_("leap"_1)(n) = 1/1461 dot 1460/1461 dot 1456/1461 dot 1452/1461 dot dots dot (1468-4(n-1))/1461 dot (1468 - 4n)/(1461) $  

Or equivalently:  

$ P_("leap"_1)(n) = (1 dot 1460 dot 1456 dot 1452 dot dots dot (1468-4(n-1)) dot (1468-4n))/(1461^n) $  

Factoring out the $4$, the expression becomes:  

$ P_("leap"_1)(n) = (1 dot (4^(n-1))[365 dot 364 dot 363 dot dots dot (367-(n-1)) dot (367-n)])/(1461^n) $  

Rewriting using factorial notation yields:  

$ P_("leap"_1)(n) = (4^(n-1) dot 365!)/(1461^n dot (366-n)!) $  

=== Case 2 (Second person chosen is born on February 29) <sec:3.1.2>
In this scenario, the first individual can be born on any day except February 29, with a probability of $1460/1461$.  

The probability of the second individual being born on February 29 is $1/1461$.  

The third individual must be born on any day other than February 29 and also not on the day selected by the first individual. This probability is $1456/1461$.  

\

This pattern mirrors the calculation in Case 1, with the first two terms swapped. The remainder of the computation follows the same structure.  

Thus, the probability is expressed as:  

$ P_("leap"_2)(n) = 1460/1461 dot 1/1461 dot 1456/1461 dot 1452/1461 dot dots dot (1468-4(n-1))/1461 dot (1468 - 4n)/(1461) $  

This leads to the same result:  

$ P_("leap"_2)(n) = (4^(n-1) dot 365!)/(1461^n dot (366-n)!) $  

=== Case 3 (Third person chosen is born on February 29) <sec:3.1.3>

This case follows the same general pattern observed in the earlier cases. The probabilities are adjusted based on the position of the individual born on February 29.  

The probability that the first person is born on any day except February 29 is $1460/1461$.  

The second person must be born on any day other than February 29 and cannot share the same birthday as the first person. This probability is $1456/1461$.  

The third person is born on February 29, which has a probability of $1/1461$.  

Continuing this pattern, the probability that no two individuals in a group of $n$ people share a birthday is expressed as:  

$ P_("leap"_3)(n) = 1460/1461 dot 1456/1461 dot 1/1461 dot 1452/1461 dot dots dot (1468-4(n-1))/1461 dot (1468 - 4n)/(1461) $  

In this scenario, the term $1/1461$ appears in the third position, while all other terms remain consistent with the overall pattern.  

As the number of individuals in the group increases, the $1/1461$ term continues to shift downward in the sequence. For instance, in case $k$, the $1/1461$ term appears in the $k^"th"$ position, while all other terms follow the same pattern established in earlier cases.  

=== Case $n$ (Last person chosen is born on February 29) <sec:3.1.4>

For the final individual in the group, the $1/1461$ term is positioned last in the sequence. All other terms remain unchanged.  

This scenario is represented as:  

$ P_("leap"_n)(n) = 1460/1461 dot 1456/1461 dot 1452/1461 dot dots dot (1468-4n)/1461 dot 1/1461 $  

The pattern observed in earlier cases persists, with the $1/1461$ term progressively moving to the $n^"th"$ position as the group size increases.  

=== Case 0 (No one is born on February 29) <sec:3.1.5>

This case examines the situation where no individual in the group is born on February 29.  

The probability that the first individual is not born on February 29 is $1460/1461$.  

The second individual must also avoid February 29 and not share the same birthday as the first individual. The probability for this is $1456/1461$.  

Since no one is born on February 29, the $1/1461$ term does not appear in this calculation.  

The probability of no two individuals in a group of $n$ people sharing a birthday under these conditions is given by:  

$ P_("leap"_0)(n) = 1460/1461 dot 1456/1461 dot 1452/1461 dot dots dot (1464-4(n-1))/1461 dot (1464 - 4n)/(1461) $  

To align with the format used in earlier cases, the final terms can be adjusted:  

$ P_("leap"_0)(n) = 1460/1461 dot 1456/1461 dot 1452/1461 dot dots dot (1468-4n)/1461 dot (1468 - 4(n+1))/(1461) $  

Factoring out the 4, the expression becomes:  

$ P_("leap"_0)(n) = ((4^n)[365 dot 364 dot 362 dot dots dot (367-n) dot (367-(n+1))])/(1461^n) $  

#pagebreak()

Rewriting using factorial notation yields:  

$ P_("leap"_0)(n) = (4^n dot 365!)/(1461^n dot (366-(n+1))!) \
P_("leap"_0)(n) = (4^n dot 365!)/(1461^n dot (365-n)!) \
P_("leap"_0)(n) = (4^n dot 365!)/(1461^n dot (366-n)!) dot (366-n) $  

=== Combining all Cases <sec:3.1.6>

The total probability of no two individuals sharing a birthday in a group of $n$ people, accounting for leap years, is derived by summing the probabilities of all cases.  

For cases 1 through $n$:  

$ P_("leap")(n) = n dot P_("leap"_1)(n) \
P_("leap")(n) = n dot (4^(n-1) dot 365!)/(1461^n dot (366-n)!) \
P_("leap")(n) = (n(4^(n-1)) dot 365!)/(1461^n dot (366-n)!) $  

For Case 0, where no one is born on February 29:  

$ P(n) = P_("leap")(n) + P_("leap"_0)(n) \
P(n) = (n(4^(n-1)) dot 365!)/(1461^n dot (366-n)!) + (4^n dot 365!)/(1461^n dot (366-n)!) dot (366-n) $  

Factoring out the common term results in:  

$ P(n) = (4^n dot 365!)/(1461^n dot (366-n)!) dot (4^(-1) n + 366 - n) \
P(n) = (4^n dot 365!)/(1461^n dot (366-n)!) dot (366 - 3/4 n) $  

#pagebreak()

== Conclusion <sec:3.2>

The formula derived provides the probability of no two individuals sharing a birthday in a group of $n$ people, accounting for leap years. The complement rule is then applied to calculate the probability of at least one shared birthday:  

$ P'(n) = 1 - P(n) $  

Thus, the exact probability of at least two individuals sharing a birthday in a group of $n$ people is given by:  

#rect(large-math[$ P(n) = 1-[(4^n dot 365!)/(1461^n dot (366-n)!) dot (366 - 3/4 n)] $])  

This formula incorporates leap year considerations and provides an accurate representation of the likelihood of shared birthdays.  

=== $n=23$ Case <sec:3.2.1>
By substituting $n = 23$ into the formula, the resulting probability is:

$ P(23) &= 1-[(4^23 dot 365!)/(1461^23 dot (366-23)!) dot (366 - 3/4 dot 23)] \
	&approx #large-math[#highlight[0.50686501͏]] "(8 significant figures)" $

This value is marginally lower than the traditionally accepted approximation of $0.5073$. The discrepancy arises from the inclusion of February 29 in the calculations, which slightly reduces the probability of shared birthdays due to the uneven distribution of birthdays across the calendar.

#pagebreak()

=== Graphing <sec:3.2.2>

To illustrate the probability of two individuals sharing a birthday within a group of $n$ people, the function $P(n)$ is graphically represented.

#figure(image("assets/Figure_1.png"), caption: [Probability of Two Individuals Sharing a Birthday in a Group of $n$ People], placement: {none})

A comparison with the traditional approximation reveals a minor divergence in probabilities for different values of $n$. 

#figure(image("assets/Figure_2.png"), caption: [Comparison of Exact and Approximate Probabilities], placement: {none})

Although the difference is not immediately apparent in the graph, it holds significance in precise probabilistic calculations. A zoomed-in view makes the disparity more discernible.

#figure(image("assets/Figure_3.png"), caption: [Zoomed-in Comparison of Exact and Approximate Probabilities], placement: {none})

= Further Analysis <sec:4>
While the exact probability formula provides a more accurate calculation compared to the traditional approximation, there remain areas for further exploration and refinement.

== Birthdate Distribution <sec:4.1>
The assumption of an even distribution of birthdays simplifies the model but may not accurately reflect real-world patterns.

Empirical data indicates that birth rates vary across months, with September recording the highest birth rates in the United States and February the lowest. @Randall01101987 These variations are potentially influenced by seasonal factors such as holidays, with February being associated with Valentine's Day and November with Thanksgiving.

Incorporating real-world birthdate distribution data into the model would enhance its accuracy. Such adjustments would involve using demographic or birth registry data to assign probabilities to specific dates.

#figure(image("assets/bdaymmdd.gif"), caption: [Birthdate Distribution @MurphyBirthday], placement: {none})

However, incorporating weighted distributions significantly complicates the calculations, as the probabilities would no longer remain uniform. 

The current calculations are limited to two cases: whether or not a person is born on February 29, with probabilities of $1/1461$ and $4/1461$, respectively. Introducing variable probabilities for each calendar day would necessitate a more complex framework, and this problem is left as an exercise for readers. 

== Correlated Birthdays <sec:4.2>
The assumption of independence in birthdates may not hold in certain contexts. Factors such as cultural practices, family planning, or institutional patterns can introduce correlations.

For instance, siblings are more likely to have correlated birthdays, and student populations may exhibit patterns influenced by academic enrollment cycles. 

#pagebreak()

A potential refinement involves modeling birthdate distributions with a normal distribution, adjusting the mean and standard deviation to reflect correlations. For example, in a classroom setting, a distribution could be represented as:

$ S ~ N(324, 30) $

Here, $S$ denotes the birthdates of students, with a mean of 324 (corresponding to November 20) and a standard deviation of 30 days. Despite these refinements, challenges such as the February 29 issue remain unresolved.

== Leap Year Adjustments <sec:4.3>
The model presented is robust and remains applicable regardless of the inclusion of leap years in the calculations. The formula inherently accounts for the number of days in a cycle of four consecutive years. For example, in a sample space from 1975 to 2000, the formula remains valid even though 1975 is not a leap year, while 2000 is.

The sequence $365, 365, 365, 366$ is equivalent to $365, 365, 366, 365$, $365, 366, 365, 365$, and $366, 365, 365, 365$. 

As such, the choice of the starting year in the sample space does not affect the formula's validity. The model ensures that the cycle includes three non-leap years and one leap year, which holds true for any four consecutive years.

For computations, values such as $1/365.25$ and $.25/365.25$ can be used. The former represents all days except February 29, while the latter corresponds to February 29. However, decimals are avoided in the derivation to maintain consistency. This approach assumes an average year length of $365.25$ days, where February 29 accounts for $0.25$ of a day annually.

=== Reality isn't always this simple <sec:4.3.1>
While it is commonly stated that every four years include a leap year, this is not entirely accurate due to exceptions in the calendar system. Although 2000 was a leap year, it represents an anomaly. The true length of a year is $365.2425$ days, necessitating adjustments to account for the discrepancy.

To reconcile this, one day is omitted every 100 years (equivalent to removing $0.01$ days annually). As a result, years divisible by $100$ are not leap years despite being divisible by $4$. For instance, 1700, 1800, and 1900 were divisible by $4$ but did not include February 29.

Conversely, an additional day is added every 400 years to account for $0.0025$ days annually. Consequently, years divisible by $400$ are leap years, even if they are divisible by $100$. Examples include 1200, 1600, 2000, and 2400.

To simplify the analysis, the sample space can be limited to individuals born between 1950 and 2025, a range encompassing the typical human lifespan. This restriction ensures that the majority of the sample will fall within this timeframe, minimizing the impact of edge cases such as years like 1900.

== Leap Seconds <sec:4.4>
The Earth's rotation is not constant; it varies due to factors such as the movement of tectonic plates and shifts in magnetic fields. To address these variations, the International Astronomical Union occasionally decides whether to add a leap second. 

When a leap second is added, the clocks progress as follows:

$ 23:59:58\
23:59:59 $

Instead of advancing directly to:

$ 00:00:00 $

the time transitions to:

$ 23:59:60 $

This adjustment introduces an extra second into the minute, creating 61 seconds instead of the standard 60. Such an irregularity can lead to complications, as systems may either become out of sync or repeat a second.

Incorporating leap seconds into the probability model involves considering 86,401 seconds on December 31, as opposed to the usual 86,400 seconds for other days. This modification slightly increases the probability of being born on December 31. However, the impact is minimal.

Under this adjusted model, the total number of seconds in four consecutive years becomes:

$ (24 dot 60 dot 60) dot 1461 + 4 = 126230404 $

This adjustment introduces three distinct probabilities for being born on December 31, February 29, and other days. The calculations are further complicated by the large denominator of $126230404$.

#pagebreak()

For extended considerations, such as super leap years, the model must account for 400 consecutive years to include century leap years. The total number of seconds over this span becomes:

$ 365 dot 400 + 100 - 1 &= 145901 "days"\
145901 dot 24 dot 60 dot 60 + 400 &= 12605846800 "seconds" $

These calculations present a challenging yet insightful exercise for detailed modeling.

== Approximations <sec:4.5>
Various simpler approximations are used in analyzing the birthday paradox. 

=== Counting the Number of Pairs <sec:4.5.1>
One approximation involves counting the number of pairs of individuals in a group. In a room with $n$ individuals, there are $n(n-1)/2$ unique pairs.

The probability that two people do not share a birthday is $364/365$, so the probability that no pair shares a birthday is expressed as $(364/365)^(n(n-1)/2)$. This leads to the probability of at least one shared birthday:

$ 1 - (364/365)^(n(n-1)/2) $

For $n = 23$, this yields a probability close to $0.5005$, which aligns with traditional approximations. However, this method assumes independence between pairs, which is not accurate. For example, if two people share a birthday and a third person shares a birthday with one of them, the likelihood of the third person sharing a birthday with the first is no longer $364/365$.

=== Using the Exponential Function <sec:4.5.2>
Another common approximation employs the exponential function. Using a Taylor expansion:

$ e^x = 1 + x + x^2/2 + x^3/6 + x^4/24 + dots $

When $x$ is close to zero, the function simplifies to:

$ e^x approx 1 + x $

#pagebreak()

This method can be applied to the probability functions. For $P_("leap"_k)(n)$:

$ P_("leap"_k)(n) = 1/1461 dot 1460/1461 dot 1456/1461 dot 1452/1461 dot dots dot (1468-4(n-1))/1461 dot (1468 - 4n)/(1461) $

Rewriting the terms in the form $1 - x$, the probability becomes:

$ P_("leap"_k)(n) = 1/1461 dot (1-1/1461) dot (1-5/1461) dot (1-9/1461) dot dots\ dots dot (1-(4(n-1)-7)/1461) dot (1-(4n-7)/1461) $

Let $S$ represent the sum of terms within the brackets. Similarly, $P_("leap")(n)$ can be expressed as:

$ P_("leap")(n) = n/1461 dot S $

For $P_("leap"_0)(n)$:

$ P_("leap"_0)(n) = 1460/1461 dot 1456/1461 dot 1452/1461 dot dots dot (1464-4(n-1))/1461 dot (1464 - 4n)/(1461) $

Rewriting:

$ P_("leap"_0)(n) = S dot (1-(4(n+1)-7)/1461) $

Combining cases provides the total probability of no shared birthdays in a group of $n$ individuals, accounting for leap years:

$ P(n) = n/1461 dot S + S dot (1-(4(n+1)-7)/1461) \
P(n) = S dot (n/1461 + 1-(4(n+1)-7)/1461) \
P(n) = S dot ((1464-3n)/1461) \
P(n) = S dot (1 - (3n-3)/1461) $

#pagebreak()

Approximating $S$:

$ S = (1-1/1461) dot (1-5/1461) dot (1-9/1461) dot (1-13/1461) dot dots\ dots dot (1-(4(n-1)-7)/1461) dot (1-(4n-7)/1461) \
approx (e^(-1/1461)) dot (e^(-5/1461)) dot (e^(-9/1461)) dot (e^(-13/1461)) dot dots\ dots dot (e^(-(4(n-1)-7)/1461)) dot (e^(-(4n-7)/1461)) \
approx e^(-(1+5+9+13+ dots + (4(n-1)-7) + (4n-7))/1461) \
approx e^(-(2n^2 - 5n + 3)/1461) $

Substituting this back into the equation, we get:

$ P(n) &approx e^(-(2n^2 - 5n + 3)/1461) dot (1 - (3n-3)/1461) \
&approx e^(-(2n^2 - 5n + 3)/1461) dot e^(-(3n-3)/1461) $
#rect(larger-math[$ P(n) &approx e^(-(2n^2 - 8n + 6)/1461) $])

This approximation is notably simpler than the exact formula and provides a reasonable estimate for the probability of no two individuals sharing a birthday in a group of $n$ people.

It is worth noting, however, that the approximation becomes less accurate for larger values of $n$.

For $n = 23$, substituting into the formula yields:

$ P(23) &approx e^(-(2(23)^2 - 8(23) + 6)/1461) \
&approx e^(-0.6023) \
&approx #large-math[#highlight[0.5475͏]] "(4 significant figures)" $

The calculated value is marginally higher than the traditionally accepted approximation of $0.5073$, though it remains a practical estimate.

#pagebreak()

== Variation of the problem <sec:4.6>
A related question to the birthday paradox examines:

#quote("What is the probability that at least one person shares your birthday in a room of n people?")

This problem differs from the classic paradox by focusing on the likelihood of finding at least one person who shares a specific individual's birthday, rather than determining whether any two people share a birthday.

Unlike the general scenario, this variation fixes one birthday (e.g., the reader's) and evaluates the probabilities for other individuals in the room relative to that date. This fixed reference point changes the nature of the calculations.

=== Case 1: You are born on February 29 <sec:4.6.1>
If the individual’s birthday is February 29, the probability that any given person does not share this birthday is $1460/1461$. 

For $n$ individuals in the room, the probability that no one shares this birthday is $(1460/1461)^n$.

The complementary probability, representing at least one individual sharing the birthday, is $1 - (1460/1461)^n$.

=== Case 2: You are not born on February 29 <sec:4.6.2>
For individuals not born on February 29, the probability that any other person does not share the specific birthday is $1457/1461$.

This includes the possibility of being born on February 29. 

For $n$ individuals in the room, the probability that no one shares the specified birthday is $(1457/1461)^n$. The complementary probability is $1 - (1457/1461)^n$.

#pagebreak()

=== Combining the cases <sec:4.6.3>
To account for both cases, the total probability of at least one person sharing a specific birthday in a group of $n$ individuals can be expressed as:

$ P(n) = 1/1461 (1 - (1460/1461)^n) + 1460/1461 (1 - (1457/1461)^n) $

The terms are weighted by the probabilities of the individual being born on February 29 or any other date.

For $n = 23$, substituting into the formula gives $P(23) approx 0.061078$, or approximately $6%$. 

\
The probability of finding at least one person who shares your birthday is significantly lower than the probability of two individuals in a group sharing the same birthday.

This difference arises because the probability of two people sharing a birthday considers all possible pairs within the group, which may not include you specifically. For instance, the shared birthday could occur between any two individuals among the $n$ others in the room. 

In contrast, the probability of someone sharing your birthday focuses exclusively on one specific event—your birthday being matched. This distinction explains why the likelihood of you sharing a birthday with someone is notably lower than the broader scenario of any two people sharing a birthday.

=== Follow-up Question <sec:4.6.4>
A follow-up to this variation asks how many individuals are required in a room to achieve a $50%$ chance of finding at least one person who shares a specific birthday.

Setting $P(n) = 0.5$ and solving for $n$, we find:

$ n = 252.996 $

Rounding to the nearest whole number, approximately $253$ individuals are needed.

This contrasts sharply with the $23$ individuals required in the classic problem for a $50%$ chance of any two individuals sharing a birthday.

#pagebreak()

== Conclusion <sec:4.7>

The birthday paradox serves as a compelling illustration of probability theory's often counterintuitive outcomes, especially in scenarios involving large sample spaces. This research has delved into both the traditional and extended interpretations of the paradox, highlighting its mathematical underpinnings and practical implications. By integrating refinements such as leap year adjustments, non-uniform birthdate distributions, and cultural variations, this study bridges the gap between theoretical models and real-world complexities.

For $n=23$, the calculated probability of approximately $0.5073$ illustrates the rapid increase in likelihood of shared birthdays with group size, while the adjusted probability $P(23)≈0.50686501$ demonstrates the impact of accounting for leap years. Furthermore, the analysis of variations, such as the probability of at least one individual sharing a specific birthday, underscores the importance of contextual framing in probability assessments.

Through rigorous mathematical modeling, graphical comparisons, and nuanced assumptions, this research advances our understanding of the birthday paradox. The findings not only enhance the accuracy of probability estimations but also highlight broader applications in fields where probabilistic reasoning is essential.

Ultimately, the study reaffirms the paradox's relevance as a foundational concept in probability theory while offering practical insights for its application in diverse domains. Future research could further refine these models by exploring additional real-world variables, thereby expanding the scope of this classic probabilistic phenomenon.

#bibliography("bibliography.bib")
