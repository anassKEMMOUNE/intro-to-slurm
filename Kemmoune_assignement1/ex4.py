import math

def calculate_discriminant(a, b, c):
    return b**2 - 4*a*c

def print_roots(a, b, c):
    if a == 0:
        print("Invalid input: 'a' must be non-zero for a quadratic equation.")
        return

    discriminant = calculate_discriminant(a, b, c)

    if discriminant > 0:
        root1 = (-b + math.sqrt(discriminant)) / (2 * a)
        root2 = (-b - math.sqrt(discriminant)) / (2 * a)
        print("Two real roots:")
        print("Root 1",root1)
        print("Root 2", root2)
    elif discriminant == 0:
        root = -b / (2 * a)
        print("One real root:")
        print("Root", root)
    else:
        real_part = -b / (2 * a)
        imaginary_part = math.sqrt(-discriminant) / (2 * a)
        print("Complex roots:")
        print("Root 1:", real_part ,"+", imaginary_part,"i")
        print("Root 2: ",real_part, "-", imaginary_part,"i")

print_roots(1,-2,-9)



   
















