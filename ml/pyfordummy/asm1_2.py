a = []
for i in range(3):
    a.append([int (num) for num in input().split()])
n = int(input())
b = []
for i in range(n):
    b.append(int(input()))
for i in range(3):
    for j in range(3):
        if a[i][j] in b:
            a[i][j] = 0
if (a[1] == [0, 0, 0] or a[2] == [0, 0, 0] or a[0] == [0, 0, 0] or [row[0] for row in a] == [0, 0, 0] or [row[1] for row in a] == [0, 0, 0] or [row[2] for row in a] == [0, 0, 0] or [a[0][0], a[1][1], a[2][2]] == [0, 0, 0] or [a[0][2], a[1][1], a[2][0]] == [0, 0, 0]):
    print('Yes')
else:
    print('No')


