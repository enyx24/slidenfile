n = int(input())

while (n > 0):
    a = input()
    b = input()
    a = sorted(a)
    b = sorted(b)
    if a == b:
        print('YES')
    else:
        print('NO')
    n -= 1

# Do dai le -> a[i] == b[j] && (i-j)%2 == 1
# String khong gioi han do dai -> brute force
