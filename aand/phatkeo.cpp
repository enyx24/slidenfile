#include <iostream>
#include <vector>
using namespace std;

int n;
vector<int> a;
vector<int> c;

int sum(vector <int> a) {
    int ans = 0;
    for (auto i: a) {
        ans += i;
    }
    return ans;
}

int tryi(int i) {
    //cout << i << '\n';
    //for (int j = 1; j <= n; j++)
    //    cout << c[j] << ' ';
    //cout << '\n';
    int j = i - 2;
    if ((j >= 1) && ((a[j] < a[j + 1] && c[j] >= c[j + 1]) || (a[j] < a[j - 1] && c[j] >= c[j - 1]))) {
        //cout << i << "!\n";
        return -1;
    }
    if (i == n + 1) {
        //cout << '?';
        return sum(c);
    }
    if (a[i] < a[i - 1] && c[i] >= c[i - 1]) {
        return -1;
    }
    if (a[i] > a[i - 1]) {
        c[i] = c[i - 1] + 1;
    }
    for (int j = 0; j < n; j++) {
        c[i] += j;
        //cout << '?' << i << '\n';
        int res = tryi(i + 1);
        //cout << res << '\n';
        if (res != -1) {
            return res;
        }
        c[i] -= j;
    }
    return -1;
}

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    
    cin >> n;
    a.resize(n);
    for (int i = 0; i < n; i++) {
        cin >> a[i];
    }
    a.insert(a.begin(), -1);
    a.push_back(-1);
    c.resize(n + 2, 1);
    c[0] = 0;
    c[n+1] = 0;
    cout << tryi(1) << endl;
    
    return 0;
}