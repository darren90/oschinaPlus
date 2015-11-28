//
//  NoticeModel.h
//  oschinaPlus
//
//  Created by Tengfei on 15/11/28.
//  Copyright © 2015年 tengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NoticeModel : NSObject
//"replyCount":0,
//"msgCount":0,
//"fansCount":0,
//"referCount":0

//notice.replyCount	int	未读评论数
//notice.msgCount	int	未读私信数
//notice.fansCount	int	新增粉丝数
//notice.referCount	int	未读@我数

/**
 *  未读评论数
 */
@property (nonatomic,copy)NSString * replyCount;
/**
 *  未读私信
 */
@property (nonatomic,copy)NSString * msgCount;
/**
 *  新增粉丝数
 */
@property (nonatomic,copy)NSString * fansCount;
/**
 *  未读@我数
 */
@property (nonatomic,copy)NSString * referCount;


@end
