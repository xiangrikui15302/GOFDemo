//
//  BuilderViewController.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/6/20.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "BuilderViewController.h"
#import "PersonDirector.h"
#import "PersonBuilder.h"
#import "PersonThinBuilder.h"
#import "PersonFatBuilder.h"

@interface BuilderViewController ()

@end

@implementation BuilderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    PersonBuilder *builder = [[PersonFatBuilder alloc]init];
    //    [self.view addSubview:[builder loadPersonView]];
    PersonView *personView = [PersonDirector creatPerson:builder];
    [self.view addSubview:personView];
}


@end
