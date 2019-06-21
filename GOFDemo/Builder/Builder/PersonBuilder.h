//
//  PersonBuilder.h
//  GOFDemo
//
//  Created by 于朝盼 on 2019/6/20.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonView.h"

NS_ASSUME_NONNULL_BEGIN

@interface PersonBuilder : NSObject

- (double)buildHeadRadius;
- (double)buildBodyWidthSale;
- (double)buildBodyHeighySale;

- (PersonView *)loadPersonView;

@end

NS_ASSUME_NONNULL_END
