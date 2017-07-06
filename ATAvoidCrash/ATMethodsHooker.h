//
//  ATMethodsHooker.h
//  yyfe
//
//  Created by linzhiman on 16/11/25.
//  Copyright © 2016年 yy.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ATMethodsHooker : NSObject

+ (void)exchangeClassMethod:(Class)aClass seletor1:(SEL)seletor1 seletor2:(SEL)seletor2;

+ (void)exchangeInstanceMethod:(Class)aClass seletor1:(SEL)seletor1 seletor2:(SEL)seletor2;

@end
