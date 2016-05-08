#!/usr/bin/env python3

def divide(a, b):
    try:
        print("try...")
        r = int(a) / int(b)
        print("result: %f" % r)
    except ValueError as e:
        print("ValueError:", e)
    except ZeroDivisionError as e:
        print("ZeroDivisionError:", e)
    else:
        print("no error")
    finally:
        print("finally")
    print("end")

divide("10", "20")
divide("10", "0")
divide("abc", 1)
