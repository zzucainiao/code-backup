
def flatten(nested):
    try:
        "" + nested
    except TypeError:
        pass
    else:
        raise TypeError

    try:
        for sublist in nested:
            for ele in flatten(sublist): #flatten return a list, so itrerat the list to yield
                yield ele
    except TypeError:
        yield nested

# need to be deep understood!!!!!!!!!!
def bookFlatten(nested):
    try:
        try:
            nested+""
        except TypeError:
            pass
        else:
            raise TypeError
        for sublist in nested:
            for element in bookFlatten(sublist):
                print("no excute")
                yield element
    except TypeError:
        print("excute")
        yield nested

def resultFlatten(nested):
    result = []
    try:
        try:
            nested+""
        except TypeError:
            pass
        else:
            raise TypeError
        for sublist in nested:
            for element in resultFlatten(sublist):
                result.append(element)
    except TypeError:
        result.append(nested)
    return result

f = flatten([1, 2, [3, 4, [5, 6]], 7, [7, 9]])
for i in f:
    print(i)

f = bookFlatten([1, 2, [3, 4, [5, 6]], 7, [7, 9]])
for i in f:
    print(i)

result = resultFlatten(["a", "b", ["c", ["d", "e"], "f"], "g"]) 
for i in result:
    print(i)
