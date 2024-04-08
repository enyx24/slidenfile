#include <bits/stdc++.h>
using namespace std;
int n;
bool c[11] = {0};
bool md[20] = {0}; //i-j == const
bool sd[20] = {0}; //i+j == const
int res[11];
int ans = 0;

void output() {
    cout << '[';
    for (int i = 1; i <= n; i++) {
        cout << '(' << i << ", " << res[i] << ')';
        if (i != n) 
            cout << ' ';
    }
    cout << "]\n";
}

int tryi(int i) {
    if (i == n+1) {
        output();
        ans += 1;
        return 1;
    }
    for (int j = 1; j <= n; j++)
        if (c[j] == 0 && md[i-j+n] == 0 && sd[i+j] == 0) {
            c[j] = 1;
            md[i-j+n] = 1;
            sd[i+j] = 1;
            res[i] = j;
            tryi(i+1);
            c[j] = 0;
            md[i-j+n] = 0;
            sd[i+j] = 0;
            res[i] = 0;
        }
    return 0;
}

int main() {
    cin >> n;
    tryi(1);
    if (ans == 0)
        cout << "No solution found.";
    return 0;
}