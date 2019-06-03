//
//  PancakeModel.h
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/31.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>

// 煎饼
NS_ASSUME_NONNULL_BEGIN

@protocol DecoratorProtocol <NSObject>

-(CGFloat)cost;

@end
@interface PancakeModel : NSObject



@end

NS_ASSUME_NONNULL_END
