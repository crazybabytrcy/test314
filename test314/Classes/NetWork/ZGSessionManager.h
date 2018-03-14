//
//  ZGSessionManager.h
//  TestPod0913
//
//  Created by 刘德福 on 2017/9/19.
//  Copyright © 2017年 defu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    RequestTypeGet,
    RequestTypePost
    
}RequestType;


@interface ZGSessionManager : NSObject


/**
 配置特定参数给服务端，放在AF请求的头中
 @param value 设定的value
 @param field field
 */
- (void)setValue:(NSString *)value forHttpField:(NSString *)field;


/**
 api请求处理

 @param requestType 请求类型
 @param urlStr URL地址
 @param param  请求的参数
 @param resultBlock 返回信息
 */
- (void)request:(RequestType)requestType
         urlStr: (NSString *)urlStr
      parameter: (NSDictionary *)param
    resultBlock: (void(^)(id responseObject, NSError *error))resultBlock;


@end
