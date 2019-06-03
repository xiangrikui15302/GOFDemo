//
//  OldAdapter.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/30.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "OldAdapter.h"
#import "CellModel.h"

@implementation OldAdapter

-(NSInteger)cellId {
    CellModel *model = self.data;
    return model.cellId;
}

-(NSString *)title {
    CellModel *model = self.data;
    return model.title;
}
@end
