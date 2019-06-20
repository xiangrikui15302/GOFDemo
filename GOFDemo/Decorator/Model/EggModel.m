//
//  EggModel.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/31.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "EggModel.h"

@implementation EggModel
{
    NSString *_name;
}

- (instancetype)initWithCake:(id<CakeProtocol>)cake{
    if (self = [super init]) {
        _name = @"Egg";
        self.cake = cake;
    }
    return self;
}
- (double)cost {
    return 1.5 + self.cake.cost;
}

- (nonnull NSString *)getName {
    return [NSString stringWithFormat:@"%@%@",_name,self.cake.getName];
}

@end
