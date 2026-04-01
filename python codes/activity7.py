nums = input("Enter numbers separated by spaces: ")
# Convert the input string into a list of integers
num_list = [int(n) for n in nums.split()]

# Calculate the sum
total = sum(num_list)
print("The sum of the list is:", total)