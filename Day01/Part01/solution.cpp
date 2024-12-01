#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <algorithm>

using namespace std;

int main(){
    vector<int> left;
    vector<int>::iterator leftIterator;
    vector<int> right;
    vector<int>::iterator rightIterator;

    string line;
    ifstream file("input.txt");

    if(file.is_open()){
        while(getline(file, line)){
            string leftString = line.substr(0, 5);
            string rightString = line.substr(8, 5);
            left.insert(leftIterator, stoi(leftString));
            right.insert(rightIterator, stoi(rightString));
            leftIterator = left.end();
            rightIterator = right.end();
        }
        file.close();
    }

    sort(left.begin(), left.end());

    sort(right.begin(), right.end());

    int sum = 0;

    for(int i = 0; i < left.size(); i++){
        sum += abs(left[i] - right[i]);
    }

    cout << sum << "\n";

    return 0;
}