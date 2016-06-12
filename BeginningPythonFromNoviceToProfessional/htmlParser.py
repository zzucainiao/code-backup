
#get data in the html page
from urllib import urlopen
from HTMLParser import HTMLParser

class Scraper(HTMLParser):
    def handle_data(self, data):
        if data and len(data.strip()) > 0:
            print data
    def handle_starttag(self, tag, attrs):
        pass #rewrite for more behieve
    def handle_endtag(self, tag, attrs):
        pass #rewrite for more behieve
    

text = open("a.html").read()
parser = Scraper()
parser.feed(text)
parser.close()
