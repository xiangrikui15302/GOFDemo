//
//  BridgeViewController.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/3/25.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "BridgeViewController.h"
#import "Car.h"
#import "Bicycle.h"
#import "MotorVehicleLane.h"
#import "NonMotorVehicleLane.h"

@interface BridgeViewController ()

@end

@implementation BridgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self drivingOnLoad];
}

// 马路上行驶着车，车分为汽车和自行车，马路分为机动车道和非机动车道，自行车行驶在非机动车道，汽车行驶在机动车道
-(void)drivingOnLoad{
    Car *car = [[Car alloc]init];
    car.load = [[MotorVehicleLane alloc]init];
    [car driving];
    
    Bicycle *biy = [[Bicycle alloc]init];
    biy.load = [[NonMotorVehicleLane alloc]init];
    [biy driving];
}

@end
