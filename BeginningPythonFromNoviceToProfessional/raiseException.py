
class MuffledCalculator:
    muffled = False
    def calc(self, expr):
        try:
            return eval(expr)
        except ZeroDivisionError:
            if self.muffled:
                print("Division by zero is muffled")
            else:
                raise

m = MuffledCalculator()
m.muffled = True
m.calc("1/0")

while True:
    try:
        x = int(input("x:"))
        y = int(input("y:"))
        print("%d/%d=%d" % (x, y, x/y))
    except Exception as e:
        raise
        print(e)
        print("input error, try again")
    else:
        break
    finally: #execute anyway
        print("clean up")
