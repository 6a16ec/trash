#include <iostream>
using namespace std;

struct element
{
    int count_branches = 0;
    element* branches[5000];
};


int main()
{
    int n; cin >> n;

    element* elements[5000];

    for(int i = 0; i < n; i++)
        elements[i] = new element();

    for(int i = 1; i < n; i++)
    {
        int parent; cin >> parent;
        (*elements[parent-1]).branches[(*elements[parent-1]).count_branches] = elements[i];
        (*elements[parent-1]).count_branches += 1;
    }

    for(int i = 0; i < n; i++)
    {
        cout << i << " " << (*elements[i]).count_branches << endl;
    }

    return 0;
}
