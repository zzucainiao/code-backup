#ifndef __window_h
#define __window_h

class Window {
private:
    static WindowImp *_imp;
protect:
    static WindowImp* getImp() {
        if(imp == NULL) {
            _imp = Factory::Instance()->createImp();
        }
        return _imp;
    }
public:
    virtual void drawText() {
        Window::getImp()->drawHaha();
    };
    virtual void drawRect() {
        Window::getImp()->drawLala();
    };
};
Window::WindowImp *_imp = NULL;

class IconWindow: public Window {
public:
     void drawBorder() {
         drawText();
         drawRect();
     }
     void drawHehe() {
        Window::getImp()->drawHehe();
     }
};

class TransientWindow: public Window {
public:
    void drawCloseBox() {
        drawRect();
    }
};

#endif
