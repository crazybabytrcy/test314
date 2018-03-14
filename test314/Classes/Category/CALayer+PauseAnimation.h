//
//  CALayer+PauseAnimation.h
//  TZSound
//
//  Created by Magic on 2017/6/6.
//  Copyright © 2017年 Magic. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (PauseAnimation)

//暂停动画
- (void) pauseAnimation;

//恢复动画
- (void) resumAnimation;

@end
