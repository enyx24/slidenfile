import random
a = [random.randint(1, 10) for _ in range(10000)]
content = "10000\n"
for num in a:
    content += str(num)+' '
with open("input.inp", "w") as file:
    file.write(content)

