#include <iostream>
using namespace std;

struct element
{
    int count_branches = 0;
    element* branches[5000];
    int max_len = -1;
};

void findMaxLen(element* element)
{
    int max_len = 0;

    for(int i = 0; i < (*element).count_branches; i++)
    {
        if((*(*element).branches[i]).max_len == -1) findMaxLen((*element).branches[i]);

        if((*(*element).branches[i]).max_len + 1 > max_len) max_len = (*(*element).branches[i]).max_len + 1;
    }

    (*element).max_len = max_len;
}


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

    findMaxLen(elements[0]);

    int max_way = 0;

    for(int i = 0; i < n; i++)
    {
        if((*elements[i]).max_len * 2 + 1 > max_way)
        {
            int max1 = 0, max2 = 0;

            for(int j = 0; j < (*elements[i]).count_branches; j++)
            {
                int max_now = (*(*elements[i]).branches[j]).max_len + 1;
                if(max_now > max1 || max_now > max2)
                {
                    max1 = max(max1, max2);
                    max2 = max_now;
                }
            }

            int way_now = max1 + max2 + 1;
            if(way_now > max_way) max_way = way_now;
        }
    }

    cout << max_way;

    return 0;
}
