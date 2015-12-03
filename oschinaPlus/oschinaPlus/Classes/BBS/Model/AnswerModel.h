//
//  AnswerModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/12/3.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnswerModel : NSObject
//post_list.answer.time	datetime	最后回帖时间
//post_list.answer.name	string	最后回帖用户

/**
 *  最后回帖时间
 */
@property (nonatomic,copy)NSString * time;

/**
 *  最后回帖用户
 */
@property (nonatomic,copy)NSString * name;


@end
