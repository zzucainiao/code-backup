
items = ["123", "abd", "he", "12d", "haha", "23", "56", " "]

nums = map(int, filter(lambda x : x.isdigit(), items))
for i in nums:
    print(i)
print(nums)

#reduce python2 only
sum = reduce(lambda x, y: x+y, nums)
print(sum)

#123
#23
#56
#[123, 23, 56]
#202
