#include <bits/stdc++.h>
using namespace std;
int a[9][9];
bool row[9][10];
bool col[9][10];
bool sub[3][3][10];

void output(){
    for (int i = 0; i < 9; i++, cout << '\n')
        for (int j = 0; j < 9; j++)
            cout << a[i][j] << ' ';
    return;
}

bool tryi(int i, int j) {
    //cout << i << ' ' << j << '\n';
    if (j == 9)
        return tryi(i+1, 0);
    if (i == 9) {
        output();
        return true;
    }
    if (a[i][j] != 0)
        return tryi(i, j+1);
    for (int k = 1; k <= 9; k++) 
        if (row[i][k] && col[j][k] && sub[i/3][j/3][k]) {
            a[i][j] = k;
            row[i][k] = 0;
            col[j][k] = 0;
            sub[i/3][j/3][k] = 0;
            if (tryi(i, j+1))
                return true;
            a[i][j] = 0;
            row[i][k] = 1;
            col[j][k] = 1;
            sub[i/3][j/3][k] = 1;
        }
    return false;
}

int main() {
    memset(row, 1, sizeof(row));
    memset(col, 1, sizeof(col));
    memset(sub, 1, sizeof(sub));
    for (int i = 0; i < 9; i++)
        for (int j = 0; j < 9; j++) {
            int k;
            cin >> k;
            a[i][j] = k;
            row[i][k] = 0;
            col[j][k] = 0;
            sub[i/3][j/3][k] = 0;
        }
    if (tryi(0, 0))
        return 0;
    cout << "No solutions";
    return 0;
}