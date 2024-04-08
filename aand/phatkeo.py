import io, os, sys
sys.setrecursionlimit(1000001)
input = io.BytesIO(os.read(0,os.fstat(0).st_size)).readline
n = int(input().decode())
a = [int(num) for num in input().decode().split()]
a = [-1]+a+[-1]
c = [0]+[1]*n+[0]

def tryi(i):
    """
    print(i)
    print(c)
    """
    j = i-2
    if (j >= 1) and (a[j] < a[j+1] and c[j] >= c[j+1]) or \
        (a[j] < a[j-1] and c[j] >= c[j-1]):
            return -1
    if i == n+1:
        return sum(c)
    if (a[i] > a[i-1]):
        c[i] = c[i-1]+1
    if a[i] < a[i-1] and c[i] >= c[i-1]:
        return -1
    for j in range(n):
        c[i] += j
        res = tryi(i+1)
        if res != -1:
            return res
        c[i] -= j
    return -1
    
def acp(a, c, n):
    n = len(ratings)
    c = [1]*n 

    for i in range(1, n):
        if a[i] > a[i-1]:
            c[i] = c[i-1] + 1

    for i in range(n-2, -1, -1):
        if a[i] > a[i+1]:
            c[i] = max(c[i], c[i+1] + 1)
        
    return sum(c)
    
print(acp(a, c, n))