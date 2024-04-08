#include <bits/stdc++.h>
using namespace std;
int n, m;
char board[7][7];
string word;
int ans = 0;
int rd[4] = {-1, 0, 1, 0};
int rc[4] = {0, -1, 0, 1}; // ULDR

bool isValid(int i, int j) {
    if (i <= 0 || i > n) 
        return false;
    if (j <= 0 || j > m)
        return false;
    return true;
}

bool tryi(int ii, int i, int j) {
    //cout << ii << ' ' << i << ' ' << j << '\n';
    if (ii == word.length()) {
        return true;
    }
    for (int k = 0; k < 4; k++) {
        i += rd[k];
        j += rc[k];
        if (isValid(i, j) && (board[i][j] == word[ii])) {
            board[i][j] = ' ';
            if (tryi(ii+1, i, j))
                return true;
            board[i][j] = word[ii];
        }
        i -= rd[k];
        j -= rc[k];
    }
    return false;
}

int main() {
    string temp;
    n = 0;
    m = 0;
    getline(cin, temp);
    for (int i = 1; i < temp.length()-1; i++) {
        if (temp[i] == '[')
            n++, m = 0;
        if ('a' <= tolower(temp[i]) and tolower(temp[i]) <= 'z')
            board[n][++m] = temp[i];
    }
    getline(cin, word);
    //cout << n << m << '\n';
    for (int i = 1; i <= n; i++)
        for (int j = 1; j <= m; j++)
            if (board[i][j] == word[0]){
                board[i][j] = ' ';
                if (tryi(1, i, j)) {
                    cout << "true";
                    return 0;
                }
                board[i][j] = word[0];
            }
    cout << "false";
    return 0;
}