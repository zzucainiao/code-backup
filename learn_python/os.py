#!/usr/bin/env python3
import os

print(os.name)
print(os.environ.get("PATH"))
print(os.path.abspath("."))

os.mkdir( os.path.join(".", "testdir") )
os.rmdir( os.path.join(".", "testdir") )
print(os.path.split("/home/wagnbing/aa.py"))
print(os.path.splitext("/home/wangbing/aa.py"))

print([x for x in os.listdir(".") if os.path.isdir(x)])

print([x for x in os.listdir(".") if os.path.isfile(x) and os.path.splitext(x)[1]==".py"])
