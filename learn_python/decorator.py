#!/usr/bin/env python3

import functools

def log(text):
    def decorator(func):
        @functools.wraps(func) #change name of wrapper
        def wrapper(*args, **kw):
            print("%s %s" % (text, func.__name__))
            return func(*args, **kw)
        return wrapper
    return decorator

@log("execute")
def now():
    print("2016-04-20")

now() #now = log("execute")(now)
print(now.__name__)
