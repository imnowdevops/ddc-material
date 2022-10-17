# Break Statement
print("Break Statement")
for i in "DevOps":
    print(i)
    if i == "O":
        print("Found my data.")
        break
print("Out of loop")

print()
print()
print("Continue Statement")
# Continue Statement
for i in "DevOps":
    if i == "O":
        print("Found my data.")
        continue
    print(f"Value of i is {i}")

print("Out of loop")