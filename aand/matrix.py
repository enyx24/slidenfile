# Code chay. qua' lau^, em tuong? code sai nen^ em nop^. tre^~ a.

M = [[0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0],
 [0, 0, 0, 0, 0]]
s = [1]*26
D, C = [], []
sr, sc = [0]*5, [0]*5

def output():
    #print(M)
    for r in M:
        for v in r:
            print(v, end = ' ')
        print()

def fill(r, c):
    if r == 4 and c == 4:
        output()
        return True
    if (c == 5):
        return fill(r+1, 0)
    kmin, kmax = 0, 0
    for i in range(1, 26):
        if s[i] == 1:
            kmin = i
            break
    for i in range(1, 26):
        if s[i] == 1:
            kmax = i        
    for v in range(1, 26):
        if s[v] == 1:
            M[r][c] = v
            lbound = kmin*(4-c) <= D[r]-sr[r] <= kmax*(4-c)
            ubound = kmin*(4-r) <= C[c]-sc[c] <= kmax*(4-r)
            if (lbound and ubound):
                sr[r] += v
                sc[c] += v
                s[v] = 0
                if fill(r, c+1):
                    return True
                sr[r] -= v
                sc[c] -= v
                s[v] = 1
            M[r][c] = 0
    return False

D = [int(num) for num in input().split()]
C = [int(num) for num in input().split()]
fill(0, 0)

