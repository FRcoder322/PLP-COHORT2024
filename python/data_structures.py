 # Get a list of integers from user input
integer_list = list(map(int, input("Enter a list of integers separated by spaces: ").split()))

# Compute the sum of integers in the list
total_sum = sum(integer_list)

# Display the result
print(f"The sum of the integers is: {total_sum}")

# Tuple containing names of five favorite books
favorite_books = ("comic", "romance", "sci-fi", "travel", "Tech")

# Print each book name on a separate line using a for loop
for book in favorite_books:
    print(book)


# Get information about a person from user input
person_info = {
    'name': input("Enter your name: "),
    'age': int(input("Enter your age: ")),
    'favorite_color': input("Enter your favorite color: ")
}

# Display the dictionary
print("Person Information:", person_info)


# Get two sets of integers from user input
set1 = set(map(int, input("Enter elements for the first set separated by spaces: ").split()))
set2 = set(map(int, input("Enter elements for the second set separated by spaces: ").split()))

# Create a new set with common elements
common_elements = set1.intersection(set2)

# Display the result
print("Common elements:", common_elements)


# List of words
word_list = ["apple", "banana", "orange", "grape", "kiwi"]

# Create a new list with words having an odd number of characters using list comprehension
odd_length_words = [word for word in word_list if len(word) % 2 != 0]

# Display the result
print("Words with an odd number of characters:", odd_length_words)
