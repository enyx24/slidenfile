import math, io, os
input = io.BytesIO(os.read(0,os.fstat(0).st_size)).readline
t = int(input())
while t:
    k = int(input())
    m = -1
    k = 2*k
    n = int(math.sqrt(k//2))
    while (n > 0 and (k-n-1)%(2*n+1) != 0):
        n -= 1
    if (n >= 1):
        m = (k-n-1)//(2*n+1)
        if (m < n):
            m, n = n, m
    else:
        n = -1 
    print(n, m)
    t -= 1