//
//  TZNoticeLocal.h
//  TZSound
//
//  Created by Magic on 2017/6/6.
//  Copyright © 2017年 Magic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TZNoticeLocal : NSObject
+(UILocalNotification*)RegisterLocalNotificationWithFireDate:(NSDate *)firedate //后台运行的本地通知
                                                  repeatType:(NSCalendarUnit)repeatInterval
                                                    keepSleep:(BOOL)isKeepSleep;




+(void)cancelAllLocalNotifications;
+(void)cancelKeepSleepNotice;
+(void)cancleAlarmNotifications;

@end
