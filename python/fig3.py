import matplotlib.pyplot as plt
import numpy as np
import math


def factorial(n):
    return math.factorial(n)


def P(n):
    try:
        numerator = (4 ** n) * factorial(365)
        denominator = (1461 ** n) * factorial(366 - n)
        multiplier = 366 - (3 / 4) * n
        probability = 1 - (numerator / denominator * multiplier)
        return probability
    except OverflowError:
        return float('inf')  # Handle large numbers gracefully


def T(n):
    try:
        numerator = factorial(365)
        denominator = (365 ** n) * factorial(365 - n)
        probability = 1 - (numerator / denominator)
        return probability
    except OverflowError:
        return float('inf')


# Generate a range of n values (e.g., from 1 to 100)
n_values = [i for i in range(22, 24)]
P_values = [P(n) for n in n_values]
T_values = [T(n) for n in n_values]

print(P_values)

# Plot the function
plt.figure(figsize=(10, 6))
plt.plot(n_values, P_values, label="P(n)", color="blue")
plt.plot(n_values, T_values, label="T(n)", color="green")

# Highlight the point n=23
n_highlight = 23
P_highlight = 0.5
plt.axvline(x=n_highlight, color="red", label=f"n={n_highlight}")
plt.axhline(y=P_highlight, color="red")
plt.scatter([n_highlight], [P_highlight], color="red", zorder=5)

# Annotate the point
plt.text(n_highlight, P_highlight, f" (n={n_highlight}, P={P_highlight:.4})",
         fontsize=10, color="red", ha="left")

plt.xlabel("n", fontsize=12)
plt.ylabel("P(n)", fontsize=12)
plt.title("Plot of P(n)", fontsize=14)
plt.grid()
plt.legend()
plt.show()
