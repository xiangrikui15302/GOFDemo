//
//  DecoratorViewController.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/31.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "DecoratorViewController.h"

@interface DecoratorViewController ()

@property (nonatomic, strong)UILabel *label;

@end

@implementation DecoratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.label];
    
}

#pragma mark - Private
-(void)calAllPrice {
    
}

#pragma mark - LazyLoad
-(UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 80)];
        _label.textColor = [UIColor redColor];
        _label.font = [UIFont systemFontOfSize:15.0];
        _label.textAlignment = NSTextAlignmentCenter;
    }
    return _label;
}

@end
