//
//  PancakeModel.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/31.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "PancakeModel.h"

@implementation PancakeModel
{
    NSString *_name;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        _name = @"_pancake";
    }
    return self;
}

#pragma mark - CakeProtocol
- (double)cost {
    return 2.0;
}

- (nonnull NSString *)getName {
    return _name;
}

@end
