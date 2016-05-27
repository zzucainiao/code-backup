#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <climits>
#include <iostream>

using namespace std;

struct ListNode {
    int val;
    ListNode *next;
};
void addToTail(ListNode **head, int val) {
    ListNode *node = new ListNode;
    node->val = val;
    node->next = NULL;
    if(*head == NULL) {
        *head = node;
    } else {
        ListNode *h = *head;
        while(h->next != NULL) {
            h = h->next;
        }
        h->next = node;
    }
}
void remove(ListNode **head, int val) {
    ListNode *newHead = new ListNode;
    ListNode *pre = newHead;
    pre->val = INT_MAX;
    pre->next = *head;
    ListNode *cur = pre->next;
    while(cur) {
        if(cur->val == val) {
            pre->next = cur->next;
            delete cur;
            cur = pre->next;
        } else {
            pre = cur;
            cur = cur->next;
        }
    }
    *head = newHead->next;
    delete newHead;
}
void show(ListNode **head) {
    ListNode *h = *head;
    cout << "element : " << endl;
    while(h) {
        cout << h->val << endl;
        h = h->next;
    }
}
void reverseOut(ListNode **head) {
    if(*head == NULL) {
        return ;
    }
    reverseOut(&((*head)->next));
    cout << "[" << (*head)->val << "]" << endl;
}
int main () {
    ListNode *head = NULL;
    int a;
    while(cin >> a && a != 0) {
        addToTail(&head, a);
        show(&head);
        reverseOut(&head);
    }
    while(cin >> a && a != 0) {
        remove(&head, a);
        show(&head);
    }
    return 0;
}
