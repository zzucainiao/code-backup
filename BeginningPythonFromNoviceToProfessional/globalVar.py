
def combine(parameter):
    global x
    x += 1
    print parameter + globalvar + globals()["parameter"]

globalvar = "wangbing"
parameter = "nimei"
x = 10
combine("hehe")
print(x)


def mul(factor):
    def mulByFactor(num):
        return factor * num
    return mulByFactor

m = mul(3)
print(m(4))

print(mul(4)(5))
