
nums = input("Enter numbers separated by spaces: ")

# Convert input string to list of integers
num_list = [int(n) for n in nums.split()]

# Check first and last elements
if num_list[0] == num_list[-1]:
    print(True)
else:
    print(False)