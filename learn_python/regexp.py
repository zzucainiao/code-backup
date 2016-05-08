#!/usr/bin/env python3

import re

s = r'^(\d{3})-(\d{3,8})$'
if re.match(s, '001-12345'):
    print('ok')
else:
    print('not match')

m = re.match(s, '001-12345')
print(m.groups())
