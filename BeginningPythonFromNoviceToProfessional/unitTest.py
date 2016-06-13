
import unittest, my_math

class ProductTestCase(unittest.TestCase):
    def testInt(self):
        for x in range(-10, 10):
            for y in range(-10, 10):
                p = my_math.product(x, y)
                self.failUnless(p == x*y, "Integer multiplication failed")

    def testFloat(self):
        for x in range(-10, 10):
            for y in range(-10, 10):
                p = my_math.product(x/10.0, y/10.0)
                self.failUnless(p == (x/10.0) * (y/10.0), "Integer multiplication failed")

if __name__ == '__main__':
    unittest.main() #make instance of all subclass of TestCase, and run all function start with test
