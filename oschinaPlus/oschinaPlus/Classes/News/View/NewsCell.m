//
//  TableViewCell.m
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import "NewsCell.h"
#import "ContentModel.h"
#import "BlogContentModel.h"

@interface NewsCell()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *replayLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end


@implementation NewsCell

- (void)awakeFromNib {
    // Initialization code
}

+(instancetype)cellWithTableView:(UITableView *)tableView
{
    NSString *ID = @"News";
    NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"NewsCell" owner:nil options:nil] lastObject];
    }
    return cell;
}

-(void)setModel:(ContentModel *)model
{
    _model = model;
    
    self.titleLabel.text = model.title;
    self.replayLabel.text = [NSString stringWithFormat:@"评论：%@",model.commentCount];
    self.authorLabel.text = model.author;
    self.timeLabel.text = model.pubDate;
}

-(void)setBlogContentModel:(BlogContentModel *)blogContentModel
{
    _blogContentModel = blogContentModel;
    
    self.titleLabel.text = blogContentModel.title;
    self.replayLabel.text = [NSString stringWithFormat:@"评论：%@",blogContentModel.commentCount];
    self.authorLabel.text = blogContentModel.author;
    self.timeLabel.text = blogContentModel.pubDate;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
