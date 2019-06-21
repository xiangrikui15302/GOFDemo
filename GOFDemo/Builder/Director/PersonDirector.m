//
//  PersonDirector.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/6/20.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "PersonDirector.h"

@implementation PersonDirector

+ (PersonView *)creatPerson:(PersonBuilder *)builder{
    
    PersonView *personView = [builder loadPersonView];
    //    [personView setNeedsDisplay];
    return personView;
}

@end
