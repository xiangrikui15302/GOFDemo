//
//  AdapterTableViewCell.h
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/30.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellModel.h"
#import "RootAdapter.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdapterTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel   *titleLabel;

//@property (nonatomic, strong) CellModel *model;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

-(void)reloadData:(id<AdapterProtocol>)data;
@end

NS_ASSUME_NONNULL_END
