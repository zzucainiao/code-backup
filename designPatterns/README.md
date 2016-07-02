## 创建型模式

1. 创建型模式都将关于该系统使用那些具体的类的信息封装起老
2. 隐藏这些类的实例是如何被创建和放在一起的

### 创建型模式提供了多种不同方法从示例化它们的代码中出去对这些具体类的显示引用

### abstract factory
系列产品，相同功能不同风格
### Builder
逐步创建大产品
### Factory method
将类的示例化延迟到子类。两个类层次结构之间的关联，在子类中实现
### Singleton

## 结构型模式

adapter（适配器）使得一个接口于其他接口兼容

composite（组合）描述如何构造一个类层次式结构，这一结构由两种类型的对象所对应的类构成。组合对象使得你可以组合基元对象以及其他的组合对象，从而形成任意复杂的结构。

proxy（代理）模式做为其他对象的一个方便的替代或占位符，可以在局部空间表示一个远程地址对象，还可以表示一个要求被加载的较大的对象，还可以用来保护敏感对象的访问。lazy的创建对象

Flyweight（轻量级）模式为共享对象定义一个结构。效率和一致性。区分**内部状态和外部状态**，内部状态储存在flyweight内，是其固有属性。外部状态与特定场景有关，需使用时传入filyweight。

Facade（外观）模式描述如何用一个对象表示整个子系统。使用一个default pipeline串联所有子系统，提供一个缺省的使用方式。

Bridge模式将对象的抽象和实现分离，从而独立的改变它们

Decorator模式描述如何动态的为对象添加职责，采用递归方式组合对象

## 行为类模式：使用继承机制在类之间分派任务
1. Template method，算法的抽象定义，它逐步定义该算法，每一步调用一个抽象操作或原语操作，子类定义该算法以具体事项该算法。
    * 定义算法的框架 或者 强制遵守的准则，子类重写具体步骤以扩展
    * 模版方法使用继承来改变算法的一部分，strategy使用委托来改变整个算法
```
class Method {
    algorithm() {
        step1()
        ,,,
        step2()
    }
    step1(){}
    step2(){}
};

class ConcreteMethod: Method {
    step1() {
        dosomething()
    }
    step2() {
        dosomething()
    }
};
```
2. Interprete，将一个文法表示成类层次，并实现一个届时起做为这些类的实例上的一个操作

行为对象模式使用对象复合而不是继承。但是这样可能会导致对等对象保持对方引用，使得耦合程度增加。
1. Mediator， 提供松耦合需要的间接性.
    * 一些类需要相互通信才能完成任务。设置一个mediator，让其与这些类通信，降低耦合
2. Chain of Responsibility，通过一条候选对象链隐式的向一个对象发送请求，根据运行时刻情况选择候选者响应请求。
    * 使用引用保持一个successor形成链，使用request类层次结构，方便handler判断自己是否可以处理该请求
```
class Handle {
    virtual handle(Request * request) {
        if(_successor) {
           _successor->handle(request); 
        }
    };
    Handle( Handle * successor): _successor(successor) {
    }
    Handle * _successor;
};
class HandleA: Handle {
    handle( Request * request ) {
        if( canHandle(request) ) {
            do something to handle;
        } else {
            Handle::handle(request);
        }
    }
};

main () {
    Handle *handler = new HandleA( new HandleB() );
    handle->handle(request);
}
```
   
3. Observer，定义并保持对象之间的依赖关系
    * publish-subscribe 发布订阅机制
```
class Subject {
    void attach( Observer * o) {
        _observers.add(o)
    }
    void detach( observer * o) {
        _observer.remove(0)
    }
    notify() {
        for o in _observres:
            o->update();
    }
    getState(){}
    setState(){
        set state;
        notify()
    }
    list<Observer*> _observers;
};

class Observer {
    setState() {
        _subject->setState();
    }
    update() {
        _subject->getState();
        doSomething to change self state;
    }
    Subject * _subject;
};
```
4. Strategy，将算法封装到对象中，方便指定和改变一个对象所使用的算法
```
class Graph {
    solverGraph() {
        _strategy->solve()
    }
    Strategy * _stragery;
};

class Stragery {
    virtual solve(Graph * graph) = 0;
};

class GreedyStrategy: Stragery {
    solve( Graph *graph ) {
        greedy to solve graph
    }
};

class LPStrategy: Stragery {
    solve( Graph *graph ) {
        make LP model to solve graph
    }
};
```
5. Command，将请求封装在对象中，这样它就可以做为参数来传递，也可以被储存在历史列表里
    * 使用**模版**表示command实际执行对象，并且利用**函数指针**增加通用型
6. state，封装一个对象的状态，使得当一个对象的状态对象变化时，该对象可以改变它的行为
    * 有限状态自动机
7. Visitor，封装分布与多个类之间的行为
    * 容易增加visitor来增加操作，但是增加被操作的element 很难。
```
class Element {
    virtual accept(Visitor * visitor) = 0;    
};
class ElementA: Element {
    accept(Visitor * visitor) {
        visitor->visitElementA()
    }
};
class ElementB: Element {
    accept(Visitor * visitor) {
        visitor->visitElementB()
    }
};

class Visitor {
    visitElementA {
    }
    visitElementB {
    }
    
    Attribute someAccumulateInformation;
};

main (){
    Visitor * visitor = new ConcerentVisitor()
    list<Element *> list;
    for element in list:
        element->accept(visitor);
}
```
8. Iterator，抽象访问和遍历一个集合中对象的方式
