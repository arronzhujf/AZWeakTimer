//
//  NSTimer+AZ_Helper.h
//  CommoniOSDemo
//
//  Created by arronzhu on 2017/8/1.
//  Copyright © 2017年 arronzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (AZ_Helper)

+ (NSTimer *)AZ_scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;

+ (NSTimer *)AZ_timerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;

@end
