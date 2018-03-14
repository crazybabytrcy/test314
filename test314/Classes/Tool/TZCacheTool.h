//
//  TZCacheTool.h
//  TZSound
//
//  Created by Magic on 2017/6/6.
//  Copyright © 2017年 Magic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TZCacheTool : NSObject

+ (NSString *)getSizeWithPath: (NSString *)path;

+ (void)clearCacheWithPath: (NSString *)path;

@end
