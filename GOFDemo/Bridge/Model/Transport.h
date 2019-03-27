//
//  Transport.h
//  GOFDemo
//
//  Created by 于朝盼 on 2019/3/25.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Load.h"

NS_ASSUME_NONNULL_BEGIN

@interface Transport : NSObject

@property (nonatomic,strong)Load *load;
- (void)driving;

@end

NS_ASSUME_NONNULL_END
