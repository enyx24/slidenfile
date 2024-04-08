def fill(matrix, D, C, row, col, count):
    count['x'] += 1
    if count['x'] == 10000000:
        return True
    # print('-----------')
    # for i in matrix:
    #     print(*i)
    # print('-----------')
    
    if row == 5:
        if valid(matrix, C):
            return True
        return False
    if col == 5:
        if SumRow[row] != D[row]:
            return False
        
        return fill(matrix, D, C, row + 1, 0, count)
    remains = list(s)
    for num in remains:
        row_need = D[row] - (SumRow[row] + num)
        col_need = C[col] - (SumCol[col] + num)
        low1 = min(remains) * (5 - col - 1)
        high1 = max(remains) * (5 - col - 1)
        low2 = min(remains) * (5 - row - 1)
        high2 = max(remains) * (5 - row - 1)
        first_branch_check = low1 <= row_need and row_need <= high1
        second_branch_check = low2 <= col_need and col_need <= high2
        if first_branch_check and second_branch_check:
            matrix[row][col] = num
            # print(row_need, low1, high1, matrix[row], count['x'])
            SumRow[row] += num
            SumCol[col] += num
            s.remove(num)
            if fill(matrix, D, C, row, col + 1, count):
                return True
            matrix[row][col] = 0
            SumRow[row] -= num
            SumCol[col] -= num
            s.add(num)
    return False

def valid(matrix, C):
    for i in range(5):
        if sum(matrix[i]) != C[i]:
            return False
    return True

if __name__ == "__main__":
    D = [60, 86, 59, 38, 82]
    C = [61, 59, 57, 89, 59]
    matrix = [[0]*5 for _ in range(5)]
    SumRow = [0] * 5
    SumCol = [0] * 5
    s = set(range(1, 26))
    count = {'x': 0}
    fill(matrix, D, C, 0, 0, count)
    for row in matrix:
        print(*row)