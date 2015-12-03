//
//  PosterCell.m
//  oschinaPlus
//
//  Created by Tengfei on 15/12/2.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "PosterCell.h"
#import "PostContentModel.h"

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

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    
}


-(void)setModel:(PostContentModel *)model
{
    _model = model;
}
 

@end
