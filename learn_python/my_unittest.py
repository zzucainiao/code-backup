#!/usr/bin/env python3

import unittest

class Dict(dict):
    def __init__(self, **kw):
        super(Dict, self).__init__(**kw)
    def __getattr__(self, key):
        try:
            return self[key]
        except KeyError:
            raise AttributeError(r"'Dict' object has no attribute '%s'" % key)

    def __setattr__(self, key, value):
        self[key] = value

class TestDict(unittest.TestCase):
    def test_init(self):
        print('test_init')
        d = Dict(a=1, b='test')
        self.assertEqual(d.a, 1)
        self.assertEqual(d.b, 'test')
        self.assertTrue(isinstance(d, dict))

    def test_key(self):
        print('test_key')
        d = Dict()
        d['key'] = 'value'
        self.assertEqual(d.key, 'value')

    def test_keyerror(self):
        print('test_keyerro')
        d = Dict()
        with self.assertRaises(KeyError):
            value = d['emmpty']

    def test_attrerror(self):
        print('test_attrerror')
        d = Dict()
        with self.assertRaises(AttributeError):
            value = d.empty

if __name__ == '__main__':
    unittest.main()

