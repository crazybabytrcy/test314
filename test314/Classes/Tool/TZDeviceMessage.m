//
//  TZDeviceMessage.m
//  TZSound
//
//  Created by Magic on 2017/6/6.
//  Copyright © 2017年 Magic. All rights reserved.
//

#import "TZDeviceMessage.h"
#include <sys/param.h>
#include <sys/mount.h>

@implementation TZDeviceMessage

+ (NSString *)freeDiskSpaceInBytes {
    struct statfs buf;
    float freespace = -1;
    if(statfs("/var", &buf) >= 0){
        freespace = (long long)(buf.f_bsize * buf.f_bfree);
    }

    // 处理单位
    NSArray *units = @[@"B", @"KB", @"MB", @"GB", @"TB"];
    NSInteger count = 1000;
    NSInteger index = 0;
    while (freespace > count) {
        freespace = freespace / count;
        index ++;
    }

    NSString *formatStr = [NSString stringWithFormat:@"%.1f%@", freespace, units[index]];

    return formatStr;
}

@end
