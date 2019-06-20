//
//  DecoratorViewController.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/31.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "DecoratorViewController.h"
#import "PancakeModel.h"
#import "EggModel.h"
#import "HamModel.h"

@interface DecoratorViewController ()


@end

@implementation DecoratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self calAllPrice];
    
}

#pragma mark - Private
-(void)calAllPrice {
     id<CakeProtocol> panCake = [[PancakeModel alloc]init];
    NSLog(@"name: %@ \n cost: %f \n", [panCake getName], [panCake cost]);
    
    // 加蛋
    panCake = [[EggModel alloc]initWithCake:panCake];
    NSLog(@"name: %@ \n cost: %f \n", [panCake getName], [panCake cost]);
    
    // 加蛋加火腿
    panCake = [[HamModel alloc]initWithCake:panCake];
    NSLog(@"name: %@ \n cost: %f \n", [panCake getName], [panCake cost]);
}



@end
