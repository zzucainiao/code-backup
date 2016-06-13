
def hehe(x):
    '''
    >>> hehe(1)
    2
    '''
    return x
class a:
    def __init__(self):
        self.x = 1
    def haha(self, x):
        '''
        >>> haha(1)
        False
        '''
        return self.x == x


if __name__ == "__main__":
    import doctest, my_math
    doctest.testmod(my_math)
    doctest.testmod()
