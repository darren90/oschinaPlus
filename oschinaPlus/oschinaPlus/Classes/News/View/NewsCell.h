//
//  TableViewCell.h
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContentModel;
@interface NewsCell : UITableViewCell
+(instancetype)cellWithTableView:(UITableView *)tableView;


@property (nonatomic,strong)ContentModel * model;


@end
