//
//  ATAvoidCrashDefine.h
//  demo
//
//  Created by linzhiman on 2017/6/15.
//  Copyright © 2017年 linzhiman. All rights reserved.
//

#ifndef ATAvoidCrashDefine_h
#define ATAvoidCrashDefine_h

#ifdef ATAssertOpen
#define ATAssertFailed(desc) NSAssert(0, desc);
#else
#define ATAssertFailed(desc)
#endif

#endif /* ATAvoidCrashDefine_h */
