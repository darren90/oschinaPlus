//
//  PosterCell.m
//  oschinaPlus
//
//  Created by Tengfei on 15/12/2.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "PosterCell.h"

@implementation PosterCell

+(instancetype)cellWithTableView:(UITableView *)tableView
{
    NSString *ID = @"poster";
    PosterCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[PosterCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    return cell;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
