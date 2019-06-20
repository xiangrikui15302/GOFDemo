//
//  HamModel.h
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/31.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DecoratorProtocol.h"

// 火腿Model
NS_ASSUME_NONNULL_BEGIN

@interface HamModel : NSObject<DecoratorProtocol>

@property (strong, nonatomic)id<CakeProtocol> cake;

- (instancetype)initWithCake:(id<CakeProtocol>) cake;

@end

NS_ASSUME_NONNULL_END
