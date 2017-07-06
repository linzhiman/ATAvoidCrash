//
//  MethodsHooker.m
//  yyfe
//
//  Created by linzhiman on 16/11/25.
//  Copyright © 2016年 yy.com. All rights reserved.
//

#import "ATMethodsHooker.h"
#import <objc/runtime.h>

@implementation ATMethodsHooker

+ (void)exchangeClassMethod:(Class)aClass seletor1:(SEL)seletor1 seletor2:(SEL)seletor2
{
    Method method1 = class_getClassMethod(aClass, seletor1);
    Method method2 = class_getClassMethod(aClass, seletor2);
    method_exchangeImplementations(method1, method2);
}

+ (void)exchangeInstanceMethod:(Class)aClass seletor1:(SEL)seletor1 seletor2:(SEL)seletor2
{
    Method method1 = class_getInstanceMethod(aClass, seletor1);
    Method method2 = class_getInstanceMethod(aClass, seletor2);
    
    BOOL didAddMethod =
    class_addMethod(aClass,
                    seletor1,
                    method_getImplementation(method2),
                    method_getTypeEncoding(method2));
    
    if (didAddMethod) {
        class_replaceMethod(aClass,
                            seletor2,
                            method_getImplementation(method1),
                            method_getTypeEncoding(method1));
    }
    else {
        method_exchangeImplementations(method1, method2);
    }
}

@end
