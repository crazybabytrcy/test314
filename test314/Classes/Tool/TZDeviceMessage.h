//
//  TZDeviceMessage.h
//  TZSound
//
//  Created by Magic on 2017/6/6.
//  Copyright © 2017年 Magic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TZDeviceMessage : NSObject

/**
 *  设备剩余存储空间
 *
 *  @return 剩余存储空间
 */
+ (NSString *)freeDiskSpaceInBytes;

@end
