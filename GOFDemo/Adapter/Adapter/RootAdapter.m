//
//  RootAdapter.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/30.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "RootAdapter.h"

@implementation RootAdapter
-(instancetype)initWithData:(id)data {
    self = [super init];
    if (self) {
        _data = data;
    }
    return self;
}

-(NSInteger)cellId {
    return 0;
}
-(NSString *)title {
    return @"";
}

@end
