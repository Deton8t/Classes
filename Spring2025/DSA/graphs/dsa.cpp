#include "node.hpp"
#include <cstdio>
#include <deque>

void dfs(Node root) {
    printf("In node %d\n", root.value);
    for(Node c : root.children) {
        dfs(c);
    }
}

int main() {
    Node root = {0,{
        {1,
            {
                {3, std::vector<Node>()},{4, std::vector<Node>()},{5,std::vector<Node>()}
            }
        },
        {2,
            {{6, 
                { 
                 {7, std::vector<Node>()}, {8, std::vector<Node>()}
                }
            }}
        }
    }
    };
    dfs(root);
}
