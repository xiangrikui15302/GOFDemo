//
//  AdapterTableViewCell.m
//  GOFDemo
//
//  Created by 于朝盼 on 2019/5/30.
//  Copyright © 2019 于朝盼. All rights reserved.
//

#import "AdapterTableViewCell.h"

@implementation AdapterTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    
    static NSString *indetifi = @"AdapterTableViewCell";
    AdapterTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indetifi];
    
    if (cell == nil) {
        cell = [[AdapterTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indetifi];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell createView];
    return cell;
}

#pragma mark - Private Method
-(void)createView {
    [self addSubview:self.titleLabel];
}

//-(void)setModel:(CellModel *)model {
//    _model = model;
//    _titleLabel.text = model.title;
//}

-(void)reloadData:(id<AdapterProtocol>)data {
    _titleLabel.text = [data title];
}
                   
#pragma mark - LazyLoad
-(UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 80)];
        _titleLabel.textColor = [UIColor brownColor];
        _titleLabel.font = [UIFont systemFontOfSize:13.0];
        _titleLabel.text = @"我是cell";
    }
    return _titleLabel;
}
@end
