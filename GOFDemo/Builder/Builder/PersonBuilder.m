//
//  PersonBuilder.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/6/20.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "PersonBuilder.h"

@implementation PersonBuilder

- (double)buildHeadRadius{
    return 0;
}

- (double)buildBodyWidthSale{
    return 0;
}

- (double)buildBodyHeighySale{
    return 0;
}
- (PersonView *)loadPersonView{
    
    CGFloat personWidth = 200;
    CGFloat personHeight = 300;
    PersonView *personView = [[PersonView alloc]initWithFrame:CGRectMake(0,100, personWidth, personHeight)];
    
    personView.headRadius = [self buildHeadRadius];
    personView.bodyWidthSale = [self buildBodyWidthSale];
    personView.bodyHeightSale = [self buildBodyHeighySale];
    
    return personView;
    
}
@end
