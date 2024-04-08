def gcd(a, b):
    while b:
        a, b = b, a%b
    return a
"""
a, b, c, d = [int(num) for num in input().split()]
cnt = 0

while a/b < c/d:
    a += 1
    b += 1
    t = gcd(a, b)
    a = a//t
    b = b//t
    cnt += 1

if a/b == c/d:
    print(cnt)
else:
    print(0)
"""
