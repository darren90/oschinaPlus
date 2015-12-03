//
//  PosterCell.h
//  oschinaPlus
//
//  Created by Tengfei on 15/12/2.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PostContentModel;
@interface PosterCell : UITableViewCell

+(instancetype)cellWithTableView:(UITableView *)tableView;


@property (nonatomic,strong)PostContentModel * model;

@end
