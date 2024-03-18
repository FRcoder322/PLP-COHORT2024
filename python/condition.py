# pylint: disable=missing-function-docstring


def large_power(base, exponent):
    result = base ** exponent
    if result > 5000:
        return True
    else:
        return False

# Test the function
print(large_power(10, 3))
print(large_power(2, 10))
print(large_power(3, 3))


def divisible_by_ten(num):
    if num % 10 == 0:
        return True
    else:
        return False

# Test the function
print(divisible_by_ten(20))  # Output: True
print(divisible_by_ten(25))  # Output: False
print(divisible_by_ten(100)) # Output: True
