//
//  RootAdapter.h
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/30.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AdapterProtocol <NSObject>

-(NSInteger) cellId;
-(NSString *) title;

@end

@interface RootAdapter : NSObject<AdapterProtocol>

@property (nonatomic,weak) id  data;
-(instancetype)initWithData:(id)data;

@end

NS_ASSUME_NONNULL_END
