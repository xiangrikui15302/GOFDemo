//
//  PersonDirector.h
//  GOFDemo
//
//  Created by 于朝盼 on 2019/6/20.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "PersonView.h"
#import "PersonBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface PersonDirector : NSObject

+ (PersonView *)creatPerson:(PersonBuilder *)builder;

@end

NS_ASSUME_NONNULL_END
