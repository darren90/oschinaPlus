//
//  PosterCell.m
//  oschinaPlus
//
//  Created by Tengfei on 15/12/2.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "PosterCell.h"
#import "PostContentModel.h"
#import "AnswerModel.h"

@interface PosterCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleabel;
@property (weak, nonatomic) IBOutlet UILabel *lastPosteTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastPostNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;

@end

@implementation PosterCell

+(instancetype)cellWithTableView:(UITableView *)tableView
{
    NSString *ID = @"poster";
    PosterCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"PosterCell" owner:nil options:nil] firstObject];
        //[[PosterCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
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
    
    self.titleabel.text = model.title;
    self.lastPosteTimeLabel.text = model.answer.time;
    self.lastPostNameLabel.text = model.answer.name;
    self.commentLabel.text = model.answerCount;
    
}
 

@end
