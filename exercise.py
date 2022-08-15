numbers = [1, 2, 3]

def square_sum(numbers):
    n = []
    for num in numbers:
        n.append(num**2)
    return n
print(square_sum(numbers))