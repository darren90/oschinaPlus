//
//  TableViewCell.h
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContentModel,BlogContentModel;
@interface NewsCell : UITableViewCell
+(instancetype)cellWithTableView:(UITableView *)tableView;

/**
 *  ContentModel - 新闻
 */
@property (nonatomic,strong)ContentModel * model;


/**
 *  BlogContentModel - 博客
 */
@property (nonatomic,strong)BlogContentModel * blogContentModel;


@end
