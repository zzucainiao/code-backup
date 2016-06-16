import sys, re
from handler import *
from util import *
from rules import *

class Parser:
    def __init__(self, handler):
        self.handler = handler
        self.rules = []
        self.filters = []
    def addRule(self, rule):
        self.rules.append(rule)
    def addFilter(self, pattern, name):
        def filter(block, handle):
            #b = re.search(pattern, block)
            #if b:
                #print "## ", b.group(1)
            return re.sub(pattern, handler.sub(name), block)
        self.filters.append(filter)

    def parse(self, f):
        self.handler.start('document')
        for block in blocks(f):
            for filter in self.filters:
                block = filter(block, self.handler)
            for rule in self.rules:
                if rule.condition(block):
                    last = rule.action(block, self.handler)
                    if last: break
        self.handler.end('document')

class BasicTextParser(Parser):
    def __init__(self, handler):
        Parser.__init__(self, handler)
        self.addRule(ListRule())
        self.addRule(ListItemRule())
        self.addRule(TitleRule())
        self.addRule(HeadingRule())
        self.addRule(ParagraphRule())

        self.addFilter(r'\*(.+?)\*', 'emphsis')
        self.addFilter(r'(http://[\.a-zA-Z/]+[a-zA-z]+)', 'url')
        self.addFilter(r'([\.a-zA-Z]+@[\.a-zA-Z]+[a-zA-Z]+)', 'mail')

if __name__ == '__main__' :
    handler = HTMLRenderer()
    parser = BasicTextParser(handler)
    parser.parse(sys.stdin)
