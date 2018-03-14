//
//  ZGSessionManager.m
//  TestPod0913
//
//  Created by 刘德福 on 2017/9/19.
//  Copyright © 2017年 defu. All rights reserved.
//

#import "ZGSessionManager.h"
#import "AFNetworking.h"

@interface ZGSessionManager()

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

@end


@implementation ZGSessionManager

- (void)setValue:(NSString *)value forHttpField:(NSString *)field {
    [self.sessionManager.requestSerializer setValue:value forHTTPHeaderField:field];
}

-(AFHTTPSessionManager *)sessionManager {
    if (!_sessionManager) {
        _sessionManager = [[AFHTTPSessionManager alloc] init];
        [_sessionManager.securityPolicy setAllowInvalidCertificates:YES];
        _sessionManager.requestSerializer=[AFJSONRequestSerializer serializer];
        _sessionManager.responseSerializer = [AFJSONResponseSerializer serializer];
        
        _sessionManager.responseSerializer.acceptableContentTypes =  [NSSet setWithObjects:@"application/json",@"text/json", @"text/plain", @"text/html", nil];
    }
    return _sessionManager;
}

- (void)request:(RequestType)requestType urlStr: (NSString *)urlStr parameter: (NSDictionary *)param resultBlock: (void(^)(id responseObject, NSError *error))resultBlock {
    
    
    void(^successBlock)(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) = ^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        resultBlock(responseObject, nil);
    };
    
    void(^failBlock)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) = ^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        resultBlock(nil, error);
    };
    
    if (requestType == RequestTypeGet) {
        [self.sessionManager GET:urlStr parameters:param progress:nil success:successBlock failure:failBlock];
    }else {
        [self.sessionManager POST:urlStr parameters:param progress:nil success:successBlock failure:failBlock];
    }
}

@end
