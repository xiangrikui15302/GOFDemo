//
//  NewAdapterViewController.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/30.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "NewAdapterViewController.h"
#import "NewCellModel.h"
#import "NewAdapter.h"
#import "AdapterTableViewCell.h"

@interface NewAdapterViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView    *tableView;
@property (nonatomic, strong) NSMutableArray *listArr;

@end

@implementation NewAdapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initData];
    [self.view addSubview:self.tableView];
}

#pragma mark - Private
-(void)initData {
    _listArr = [[NSMutableArray alloc]init];
    NewCellModel *model = nil;
    for (int i = 0; i <10; i++) {
        model = [[NewCellModel alloc]init];
        model.newCellId = i;
        model.newtitle = [NSString stringWithFormat:@"我是新需求第%d行",i];
        [_listArr addObject:model];
    }
}

#pragma mark - UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _listArr.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AdapterTableViewCell *cell = [AdapterTableViewCell cellWithTableView:tableView];
//    cell.model = _listArr[indexPath.row];
    NewCellModel *model = _listArr[indexPath.row];
    NewAdapter *adapter = [[NewAdapter alloc]initWithData:model];
    [cell reloadData:adapter];
    return cell;
}

#pragma mark - LazyLoad
-(UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
