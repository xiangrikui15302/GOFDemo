//
//  PancakeModel.h
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/31.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CakeProtocol <NSObject>

-(double)cost;
- (NSString *)getName;

@end

// 一个被装饰者煎饼对象，包含基本价格和名称
@interface PancakeModel : NSObject<CakeProtocol>

@end

NS_ASSUME_NONNULL_END
