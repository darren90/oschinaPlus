//
//  PostModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/12/2.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NoticeModel;
@interface PostModel : NSObject
/**
 *  新闻列表 - 存放的是ContentModel
 */
@property (nonatomic,strong)NSArray * post_list;

/**
 *  通知-一些消息
 */
@property (nonatomic,strong)NoticeModel * notice;


@end
