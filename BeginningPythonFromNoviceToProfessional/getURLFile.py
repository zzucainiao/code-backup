#from urllib import urlopen   python2 only
import urllib.request as URE
import re
from collections import deque

startPage = "http://www.baidu.com"
Q = deque()
Q.append(startPage)
S = set()
S.add(startPage)
regex = re.compile('<a href="(https?://[^"]+)" .*?>.*?</a>', re.IGNORECASE)
dirForHtml = "/home/wangbing/hello-world/BeginningPythonFromNoviceToProfessional/html/"
num = 0


filename = startPage.replace("/", "%")
URE.urlretrieve(startPage, dirForHtml + filename)

while len(Q) > 0:
    page = Q.popleft()
    filename = page.replace("/", "%")
    try:
        print("<------------%s-----------> %d already" % (page, num))
        data = URE.urlopen(page).read().decode('utf-8')
        #URE.urlretrieve(page, dirForHtml + filename)
        num += 1
        if num > 10:
            break
    except:
        continue
    with open(dirForHtml + filename, "w") as f:
        f.write(data)

    for url in regex.findall(data):
        if url not in S:
            S.add(url)
            Q.append(url)
