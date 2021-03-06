//
//  ShowHTTPResponseSerializer.m
//  ShowLive
//
//  Created by 周华 on 2018/3/21.
//  Copyright © 2018年 vning. All rights reserved.
//

#import "ShowHTTPResponseSerializer.h"

@implementation ShowHTTPResponseSerializer
- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.acceptableContentTypes = [NSSet setWithObjects:@"text/html",@"application/json",@"text/plain", nil];
    
    return self;
}

@end
