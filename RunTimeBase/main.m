//
//  main.m
//  RunTimeBase
//
//  Created by     马世杰 on 2024/7/31.
//

#import <Foundation/Foundation.h>
#import "HXPerson.h"
#import <objc/message.h>
#import "HXSon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        
        //对象的本质是结构体
        //方法的本质是 obic_msgSend 发送消息
        HXPerson *p = [[HXPerson alloc] init];
        
    //    objc_msgSend((id)p, sel_registerName("personRun"));
    //    objc_msgSend(p, personrun)
    //    p 消息的接受者
    //    personRun 方法编号(字符串)
    //    imp 函数实现的指针
        [p personRun];
        
//        objc_msgSend(p, sel_registerName("personRun"));
//        ((void (*)(id, SEL))(void *)objc_msgSend)((id)p, sel_registerName("personRun"));
//        NSLog(@"%p ------ %p", @selector(personRun), sel_registerName("personRun"));
        
//        [HXPerson classM];
//        ((void (*)(Class, SEL))(void *)objc_msgSend)(objc_getClass("HXPerson"), sel_registerName("classM"));
        
        HXSon *s = [[HXSon alloc] init];
        [s personRun];
        
        
//        struct objc_super mySuper;
//        mySuper.receiver = s;
//        mySuper.super_class = class_getSuperclass([s class]);
//        objc_msgSendSuper(&mySuper, @selector(personRun));
//        
//        [HXSon classM];
//        struct objc_super myClassSuper;
//        mySuper.receiver = [s class];
//        mySuper.super_class = class_getSuperclass(object_getClass([s class]));  //元类
//        objc_msgSendSuper(&myClassSuper, @selector(classM));
        
        
        //对象方法 存在哪
        //类方法 存在哪
        //类方法存在元类 类方法是以什么形态存在元类当中？  以实例方法存在
        
        //对象 在类里面 就是一个实例对象
        //类 在元类里面就是一个实例对象
        //类方法在元类里 就是元类的实例方法
        
    }
    return 0;
}

void personrun (id self, SEL _cmd) {
    
}
