#/usr/bin/env python3

lst = list([1, 2, 3, 4])
print(lst)

a = [1, 2]
lst.extend(a)
print(a)

a[1] = 10
print(a)

lst[ len(lst): ] = a
print(lst)

lst.pop()
print(lst)

lst.pop(0)
print(lst)

lst.remove(1) #only remove one element
print(lst)

lst.sort()
print(lst)

#[1, 2, 3, 4]
#[1, 2]
#[1, 10]
#[1, 2, 3, 4, 1, 2, 1, 10]
#[1, 2, 3, 4, 1, 2, 1]
#[2, 3, 4, 1, 2, 1]
#[2, 3, 4, 2, 1]
#[1, 2, 2, 3, 4]
