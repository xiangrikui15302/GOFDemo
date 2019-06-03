//
//  NewAdapter.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/30.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "NewAdapter.h"
#import "NewCellModel.h"

@implementation NewAdapter

-(NSInteger)cellId {
    NewCellModel *model = self.data;
    return model.newCellId;
}
-(NSString *)title {
    NewCellModel *model = self.data;
    return model.newtitle;
}

@end
