#include <iostream>
#include <vector>
#include "stats.h"
using namespace std;

int main(int argc, char** argv)
{
    vector<int> v1 = {1, 2, 3, 4};

    double avg = mean(v1.data(), v1.size());
    cout << "mean :" << avg << endl;
}