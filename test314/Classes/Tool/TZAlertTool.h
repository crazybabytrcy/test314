//
//  TZAlertTool.h
//  TZSound
//
//  Created by Magic on 2017/6/6.
//  Copyright © 2017年 Magic. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TZAlertTool : NSObject


+ (void)alertTitle:(NSString *)titile type:(UIAlertControllerStyle)alertType message:(NSString *)message didTask:(void(^)())task;

@end
