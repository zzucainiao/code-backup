from heapq import *
from random import shuffle
from collections import deque

data = list(range(10))
shuffle(data)
print(data)
heap = []
for i in data:
    heappush(heap, i)
print(heap)

print(heappop(heap))
print(heappop(heap))
heappush(heap, 0.5)
print(heap)

heapreplace(heap, 100)
print(heap)

heapify(data)
print(data)

dqu = deque(range(6))
print(dqu)
dqu.append(10)
print(dqu)
dqu.appendleft(100)
print(dqu)
print(dqu.pop())
print(dqu)
print(dqu.popleft())
print(dqu)
dqu.rotate(3)
print(dqu)
#[8, 7, 1, 4, 6, 3, 5, 0, 2, 9]
#[0, 1, 3, 2, 6, 7, 5, 8, 4, 9]
#0
#1
#[0.5, 2, 3, 4, 6, 7, 5, 9, 8]
#[2, 4, 3, 8, 6, 7, 5, 9, 100]
#[0, 2, 1, 4, 6, 3, 5, 8, 7, 9]
#deque([0, 1, 2, 3, 4, 5])
#deque([0, 1, 2, 3, 4, 5, 10])
#deque([100, 0, 1, 2, 3, 4, 5, 10])
#10
#deque([100, 0, 1, 2, 3, 4, 5])
#100
#deque([0, 1, 2, 3, 4, 5])
#deque([3, 4, 5, 0, 1, 2])
