#ifndef __component_h
#define __component_h
#include <vector>
#include <map>
#include <string>
#include <iostream>

class Component;

class FlyweightFactory {
private:
    static std::map< std::string, Component* > _flyweight;
public:
    static Component* getFlyweight( const std::string &name ) {
        if(_flyweight.find(name) == _flyweight.end()) {
            return NULL;
        }
        return _flyweight[name];
    }
    static FlyweightFactory* getFactory() {
        static FlyweightFactory factory;
        return &factory;
    }
    static void install(const std::string& name, Component* component) {
        _flyweight[name] = component;
    }
};
std::map< std::string, Component* > FlyweightFactory::_flyweight;

#define INSTALL(name, component) \
    FlyweightFactory::getFactory()->install(name, component)
#define GET(name) \
    FlyweightFactory::getFlyweight(name)


typedef std::vector<Component*> Children;

class Component {
public:
    virtual void draw(int outState)  = 0;
    virtual Children* getChildren() {
        return NULL;
    }
    /* 外部状态，需要使用另外一个类层次，包含一个flyweight对象引用和外部状态，才能实现getParent操作
    Component* getParent() {
        return NULL;
    }
    */
    virtual void add(Component* component) {
    }
};

class LeafA : public Component {
private:
    static LeafA leafA;
    LeafA() {
        INSTALL("LeafA", this);
    }
public: 
    virtual void draw(int outState) override {
        std::cout << "leafA " << outState << std::endl; 
    }
};
LeafA LeafA::leafA;

class LeafB : public Component {
private:
    static LeafB leafB;
    LeafB() {
        INSTALL("LeafB", this);
    }
public: 
    virtual void draw(int outState) override {
        std::cout << "leafB " << outState << std::endl; 
    }
};
LeafB LeafB::leafB;

class Composite : public Component {
private:
    Children _children;
public:
    virtual void draw(int outState) override {
        for(typename Children::iterator it = _children.begin(); it != _children.end(); ++it) {
            (*it)->draw(outState);
        }
    }
    virtual Children* getChildren() override {
        return &_children;
    }
    virtual void add(Component* component) override {
        _children.push_back(component);
    }
};

#endif

