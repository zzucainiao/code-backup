#ifndef __windowimp_h
#define __windowimp_h

class WindowImp {
public:
    virtual void drawHaha() = 0;
    virtual void drawLala() = 0;
    virtual void drawHehe() = 0;
};

class WindowImp1: public WindowImp {
public:
    void drawHaha() override {
        std::cout << "haha1" << std::endl;
    }
    void drawLala() override {
        std::cout << "lala1" << std::endl;
    }
    void drawHehe() override {
        std::cout << "hehe1" << std::endl;
    }
};

class WindowImp2: public WindowImp {
public:
    void drawHaha() override {
        std::cout << "haha2" << std::endl;
    }
    void drawLala() override {
        std::cout << "lala2" << std::endl;
    }
    void drawHehe() override {
        std::cout << "hehe2" << std::endl;
    }
};

class Factory {
public:
     
};
#endif
